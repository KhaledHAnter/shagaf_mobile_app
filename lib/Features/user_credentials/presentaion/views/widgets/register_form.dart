import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shagaf_mobile_app/Core/utils/app_router.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/credentials_swap.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/forgot_password_button.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/form_item.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/login_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
  bool obscureText = true,
      reObscureText = true,
      reminderMe = false,
      autoValidate = false,
      isLoading = false;
  String? phone, password, userName, confirmPassword;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Form(
          key: formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FormItem(
                label: "Phone Number",
                hint: "Enter your phone number",
                onChanged: (p0) {
                  phone = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter phone number";
                  } else if (p0.length < 11) {
                    return "Phone number must be at least 11 characters";
                  }
                  return null;
                },
                prefixIcon: const Icon(Iconsax.call),
                keyboardType: TextInputType.number,
              ),
              const Gap(24),
              FormItem(
                label: "User Name",
                hint: "Enter your name",
                onChanged: (p0) {
                  phone = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter user name";
                  }
                  return null;
                },
                prefixIcon: const Icon(Iconsax.user),
              ),
              const Gap(24),
              FormItem(
                label: "Password",
                hint: "Enter your password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText
                      ? const Icon(Iconsax.eye4)
                      : const Icon(Iconsax.eye_slash5),
                ),
                obscureText: obscureText,
                onChanged: (p0) {
                  password = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter password";
                  } else if (p0.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                  return null;
                },
                prefixIcon: const Icon(Iconsax.lock_1),
              ),
              const Gap(24),
              FormItem(
                label: "Confirm Password",
                hint: "Confirm password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      reObscureText = !reObscureText;
                    });
                  },
                  child: reObscureText
                      ? const Icon(Iconsax.eye4)
                      : const Icon(Iconsax.eye_slash5),
                ),
                obscureText: reObscureText,
                onChanged: (p0) {
                  confirmPassword = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter password confirmation";
                  } else if (p0 != password) {
                    return "Passwords don't match";
                  }
                  return null;
                },
                prefixIcon: const Icon(Iconsax.lock_1),
              ),
              const Gap(24),
              LoginButton(
                text: isLoading ? "Loading..." : "SIGN UP",
                onTap: () {
                  buttonAction(context);
                },
                isLoading: isLoading,
              ),
              const Gap(16),
              CredentialsSwap(
                text1: "Already  have an account? ",
                text2: "Log In",
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kRegisterView);
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  void buttonAction(BuildContext context) {
    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          isLoading = false;
        });
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      });
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }
}
