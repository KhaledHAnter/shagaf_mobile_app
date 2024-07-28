import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Features/onboarding/data/models/onboarding_model.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/onborad_page_view_content.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({
    super.key,
    required this.pageController,
    this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      onPageChanged: onPageChanged,
      controller: pageController,
      itemCount: onboardingData.length,
      itemBuilder: (context, index) {
        return OnboardPageViewContent(
          onboardingData: onboardingData[index],
        );
      },
    );
  }
}
