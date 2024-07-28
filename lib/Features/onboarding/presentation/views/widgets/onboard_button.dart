import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';

class OnboardButton extends StatelessWidget {
  const OnboardButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Color(0xff20473E),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          Assets.imagesOnboardArrow,
        ),
      ),
    );
  }
}
