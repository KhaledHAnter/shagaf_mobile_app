import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shagaf_mobile_app/Core/utils/app_router.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/form_item.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/login_button.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<ForgotPasswordForm> {
  bool autoValidate = false;
  String? phone;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Forgot Your Password?",
          style: Styles.semiBold20.copyWith(color: const Color(0xff101623)),
        ),
        const Gap(13),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "Enter your phone number, we will send you confirmation code",
            style: Styles.regular12.copyWith(color: const Color(0xff787878)),
          ),
        ),
        const Gap(47),
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
              LoginButton(
                text: "Reset Password",
                onTap: () {
                  buttonAction(context);
                },
              ),
              const Gap(20),
            ],
          ),
        ),
      ],
    );
  }

  void buttonAction(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).push(AppRouter.kForgotVerficationView, extra: phone);
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }
}
