import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_mobile_app/Core/utils/app_router.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';
import 'package:shagaf_mobile_app/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    navigateToLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: kGreenPrimaryColor,
              image: DecorationImage(
                image: AssetImage(Assets.imagesSplashBackground),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: AspectRatio(
                    aspectRatio: 95 / 160,
                    child: Image.asset(Assets.imagesLogoP2)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToLogin() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
      },
    );
  }
}
