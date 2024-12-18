import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/models/user_model.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../generated/l10n.dart';
import '../../logic/user/user_bloc.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/text_input_widget.dart';
import '../bloc/auth/auth_bloc.dart';
import '../widgets/terms_policy_widget.dart';

@RoutePage()
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            getIt<AuthRepository>(),
            getIt<UserRepository>(),
          ),
        ),
      ],
      child: SignupContent(),
    );
  }
}

class SignupContent extends StatelessWidget {
  SignupContent({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            if (state.status == UserStatus.saved) {
              context.router.pushNamed('/home');
            } else if (state.status == UserStatus.failure) {
              context.showSnackBarMessage(state.errorMessage ?? '');
            }
          },
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.status == AuthStatus.successSignup) {
                if (state.userId != null) {
                  final userModel = UserModel(id: state.userId!);
                  context
                      .read<UserBloc>()
                      .add(UserEvent.saveUserData(userModel));
                } else {
                  context.showSnackBarMessage(S.current.lblUnableSignup);
                }
              } else if (state.status == AuthStatus.failure) {
                context.showSnackBarMessage(state.error ?? '');
              }
            },
            child: Padding(
              padding: Gaps.large.paddingHorizontal,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.current.lblAppName, style: header1),
                      Gaps.larger.spaceVertical,
                      Text(
                        S.current.lblSignUp,
                        style: header1.copyWith(fontSize: 16),
                      ),
                      Align(
                        child: Text(
                          S.current.lblEnterPassword,
                          style: body1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _emailController,
                        hintText: S.current.hintYourEmail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.lblEmailRequire;
                          } else if (!EmailValidator.validate(value)) {
                            return S.current.lblValidEmail;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _passwordController,
                        obscureText: true,
                        hintText: S.current.hintYourPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.lblRequirePassword;
                          } else if (value.length < 6) {
                            return S.current.lblPasswordLength;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _repeatPasswordController,
                        obscureText: true,
                        hintText: S.current.hintrepeatPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.lblConfirmPassword;
                          } else if (value != _passwordController.text) {
                            return S.current.lblPasswordDontMatch;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      SubmitButton(
                        titleColor: ColorScheme.of(context).surface,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.signup(
                                    _emailController.text,
                                    _passwordController.text,
                                  ),
                                );
                          }
                        },
                        title: S.current.btnCreateAccount,
                        backgroundColor: ColorScheme.of(context).primary,
                        isLoading: context.watch<AuthBloc>().state.status ==
                                AuthStatus.loading ||
                            context.watch<UserBloc>().state.status ==
                                UserStatus.loading,
                      ),
                      Gaps.larger.spaceVertical,
                      TermsPolicyWidget(
                        messagePrefix: S.current.lblClickCreateAccount,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
