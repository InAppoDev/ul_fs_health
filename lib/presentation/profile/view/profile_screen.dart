import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/profile_repository.dart';
import '../../../l10n/localizations_utils.dart';
import '../../auth/widgets/auth_guard_widget.dart';
import '../../logic/user/user_bloc.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/text_input_widget.dart';
import '../bloc/profile_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ProfileBloc(getIt<ProfileRepository>(), getIt<AuthRepository>())
                ..add(const ProfileEvent.getProfile()),
        ),
      ],
      child: const ProfileContent(),
    );
  }
}

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => ProfileContentState();
}

class ProfileContentState extends State<ProfileContent> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _currentPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _emailController.text =
        context.watch<ProfileBloc>().state.currentUser?.email ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        showBackButton: true,
        onInfoPress: () {},
      ),
      body: Center(
        child: AuthGuardWidget(
          child: BlocListener<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state.status == ProfileStatus.failure) {
                context.showSnackBarMessage(state.error ?? '');
              } else if (state.status == ProfileStatus.loaded) {
                _emailController.text = state.currentUser?.email ?? '';
                context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.resetStatus());
              } else if (state.status == ProfileStatus.success) {
                context.read<UserBloc>().add(const UserEvent.userLogout());
              }
            },
            child: Padding(
              padding: Gaps.large.paddingHorizontal,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        appLocalizations.profileHeaderText,
                        style: header1.copyWith(fontSize: 16),
                      ),
                      Align(
                        child: Text(
                          appLocalizations.lblEditLoginData,
                          style: body1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintText: appLocalizations.hintYourEmail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return appLocalizations.lblEmailRequire;
                          } else if (!EmailValidator.validate(value)) {
                            return appLocalizations.lblValidEmail;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _currentPasswordController,
                        obscureText: true,
                        hintText: appLocalizations.hintYourPassword,
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return appLocalizations.lblPasswordLength;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _passwordController,
                        obscureText: true,
                        hintText: appLocalizations.hintNewPassword,
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.length < 6) {
                            return appLocalizations.lblPasswordLength;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      TextInputWidget(
                        controller: _repeatPasswordController,
                        obscureText: true,
                        hintText: appLocalizations.hintNewRepeatPassword,
                        validator: (value) {
                          final password = _passwordController.text;
                          final newPassword = _repeatPasswordController.text;
                          if (password != newPassword &&
                              password.isNotEmpty &&
                              newPassword.isNotEmpty) {
                            return appLocalizations.lblConfirmPassword;
                          }
                          return null;
                        },
                      ),
                      Gaps.larger.spaceVertical,
                      SubmitButton(
                        titleColor: ColorScheme.of(context).surface,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<ProfileBloc>().add(
                                ProfileEvent.updateUserProfile(
                                    password: _currentPasswordController.text,
                                    email: _emailController.text,
                                    newPassword: _passwordController.text));
                          }
                        },
                        title: appLocalizations.btnSaveChangesText,
                        backgroundColor: ColorScheme.of(context).primary,
                        isLoading: context.watch<ProfileBloc>().state.status ==
                                ProfileStatus.loading ||
                            context.watch<UserBloc>().state.status ==
                                UserStatus.loading,
                      ),
                      Gaps.larger.spaceVertical,
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
