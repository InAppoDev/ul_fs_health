import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../generated/l10n.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/text_input_widget.dart';
import '../bloc/auth/auth_bloc.dart';
import '../widgets/terms_policy_widget.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        getIt<AuthRepository>(),
        getIt<UserRepository>(),
      ),
      child: LoginContent(),
    );
  }
}

class LoginContent extends StatelessWidget {
  LoginContent({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.successLogin) {
              context.router.pushNamed('/questionnaire');
            } else if (state.status == AuthStatus.failure) {
              context
                  .showSnackBarMessage(state.error ?? S.current.lblLoginFailed);
            }
          },
          child: Padding(
            padding: Gaps.largest.paddingHorizontal,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.current.lblAppName, style: header1),
                    Gaps.extraLarge.spaceVertical,
                    Text(
                      S.current.lblLogin,
                      style: header1.copyWith(fontSize: 16),
                    ),
                    Align(
                      child: Text(
                        S.current.lblEmailPassword,
                        style: body1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Constants.sizedBoxHeightMiddle.spaceVertical,
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
                    Constants.sizedBoxHeightMiddle.spaceVertical,
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
                    Constants.sizedBoxHeightMiddle.spaceVertical,
                    SubmitButton(
                      titleColor: ColorScheme.of(context).onTertiary,
                      backgroundColor: ColorScheme.of(context).onSurface,
                      title: S.current.btnContinue,
                      isLoading: context.watch<AuthBloc>().state.status ==
                          AuthStatus.loading,
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  _emailController.text,
                                  _passwordController.text,
                                ),
                              );
                        }
                      },
                    ),
                    Constants.sizedBoxHeightMiddle.spaceVertical,
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        S.current.lblForgottenPassword,
                        style: body3,
                      ),
                    ),
                    Constants.sizedBoxHeightMiddle.spaceVertical,
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: dividerColor,
                            thickness: Constants.dividerThickness,
                          ),
                        ),
                        Padding(
                          padding: Gaps.medium.paddingHorizontal,
                          child: Text(
                            S.current.lblOr,
                            style: body2.copyWith(
                              color: dividerColor,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: dividerColor,
                            thickness: Constants.dividerThickness,
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBoxHeightMiddle.spaceVertical,
                    Text(S.current.lblSignUp,
                        style: header1.copyWith(fontSize: 16)),
                    const SizedBox(height: Gaps.medium),
                    Text(S.current.lblNotYetRegistered, style: body1),
                    Gaps.large.spaceVertical,
                    SubmitButton(
                      titleColor: ColorScheme.of(context).onSurface,
                      onPressed: () {
                        context.router.pushNamed('/signup');
                      },
                      title: S.current.lblSignUp,
                      backgroundColor: lightGrey,
                    ),
                    Constants.sizedBoxHeightMiddle.spaceVertical,
                    TermsPolicyWidget(
                      messagePrefix: S.current.lblYouAgree,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
