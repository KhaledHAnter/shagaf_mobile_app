import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';
import 'package:shagaf_mobile_app/Features/onboarding/data/models/onboarding_model.dart';

class OnboardPageViewContent extends StatelessWidget {
  const OnboardPageViewContent({
    super.key,
    required this.onboardingData,
  });

  final OnboardingModel onboardingData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(onboardingData.image),
        const Gap(24),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            onboardingData.title,
            style: Styles.semiBold20,
          ),
        ),
        const Gap(24),
        Text(
          onboardingData.description,
          style: Styles.regular16.copyWith(color: const Color(0xffFFC100)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
