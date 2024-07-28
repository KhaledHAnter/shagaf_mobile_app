import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/constants.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.active,
  });

  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active ? 15 : 13,
      height: active ? 15 : 13,
      curve: Curves.easeInOut,
      duration: kTransitionDuration,
      decoration: BoxDecoration(
        color: active
            ? const Color(0XFFF04C29)
            : const Color(0XFFF04C29).withOpacity(.5),
        shape: BoxShape.circle,
      ),
    );
  }
}
