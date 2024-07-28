import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/credentials_back_arrow.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const CerdentialsBackArrow(),
            const Gap(36),
            Image.asset(Assets.imagesLoginlogo),
            const Gap(32),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffFBD57D).withOpacity(.5),
              ),
              child: const Column(
                children: <Widget>[
                  LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
