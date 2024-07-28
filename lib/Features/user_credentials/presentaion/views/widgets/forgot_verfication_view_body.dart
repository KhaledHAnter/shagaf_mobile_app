import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/credentials_back_arrow.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/forgot_verfication_form.dart';

class ForgotVerficationViewBody extends StatelessWidget {
  const ForgotVerficationViewBody({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CerdentialsBackArrow(
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            const Gap(36),
            Image.asset(Assets.imagesLoginlogo),
            const Gap(32),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffFBD57D).withOpacity(.5),
              ),
              child: Column(
                children: <Widget>[
                  ForgotVerificationForm(
                    phone: phone,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
