import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
            onPressed: onPressed,
            child: const Text(
              "Skip",
              style: Styles.regular17,
            )),
      ],
    );
  }
}
