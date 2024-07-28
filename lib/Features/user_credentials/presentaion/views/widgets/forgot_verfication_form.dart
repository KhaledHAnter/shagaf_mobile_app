import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/login_button.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/otp_square.dart';

class ForgotVerificationForm extends StatefulWidget {
  const ForgotVerificationForm({super.key, required this.phone});
  final String phone;

  @override
  State<ForgotVerificationForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<ForgotVerificationForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Enter Verification Code",
          style: Styles.semiBold20.copyWith(color: const Color(0xff101623)),
        ),
        const Gap(13),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "Enter code that we have sent to your number",
            style: Styles.regular12.copyWith(color: const Color(0xff787878)),
          ),
        ),
        Text(
          "${widget.phone.substring(0, 8)}***",
          style: Styles.medium16.copyWith(color: Colors.black),
        ),
        const Gap(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              otp.length,
              (index) {
                return Padding(
                  padding: index == 2
                      ? const EdgeInsets.only(right: 30)
                      : EdgeInsets.zero,
                  child: const OTPsquare(),
                );
              },
            ),
          ),
        ),
        const Gap(40),
        LoginButton(
            text: "Verify",
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          children: [
                            SvgPicture.asset(Assets.imagesSuccess),
                            const Gap(12),
                            Text(
                              "Success",
                              style: Styles.semiBold20.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff101623),
                              ),
                            ),
                            const Gap(12),
                            Text(
                              "You have successfully reset your password.",
                              style: Styles.regular16
                                  .copyWith(color: const Color(0xffA1A8B0)),
                              textAlign: TextAlign.center,
                            ),
                            const Gap(24),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 38),
                              child: LoginButton(
                                text: "Done",
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
        const Gap(35),
      ],
    );
  }
}

List<int> otp = [0, 0, 0, 0, 0, 0];
