import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_mobile_app/Core/utils/app_router.dart';
import 'package:shagaf_mobile_app/Features/onboarding/data/models/onboarding_model.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/dots_indicator_row.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/onboard_button.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/onborad_page_view.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/skip_button.dart';
import 'package:shagaf_mobile_app/constants.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: kGreenPrimaryColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: <Widget>[
                  SkipButton(
                    onPressed: () {
                      navigateToLogin(context);
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    child: OnboardPageView(
                      pageController: pageController,
                      onPageChanged: (p0) {
                        setState(() {
                          currentIndex = p0;
                        });
                      },
                    ),
                  ),
                  const Gap(24),
                  DotsIndicatorRow(
                    currentIndex: currentIndex,
                  ),
                  const Spacer(),
                  OnboardButton(
                    onTap: () {
                      if (currentIndex != onboardingData.length - 1) {
                        pageController.nextPage(
                            duration: kTransitionDuration,
                            curve: Curves.easeInOut);
                      } else {
                        navigateToLogin(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToLogin(BuildContext context) {
    GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
  }
}
