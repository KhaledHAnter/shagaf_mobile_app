import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Features/onboarding/data/models/onboarding_model.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/widgets/dot_indicator.dart';

class DotsIndicatorRow extends StatelessWidget {
  const DotsIndicatorRow({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingData.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: DotIndicator(active: index == currentIndex),
          );
        },
      ),
    );
  }
}
