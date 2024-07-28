import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';

class ForgotPassButton extends StatelessWidget {
  const ForgotPassButton({
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
          child: Text(
            "Forget password?",
            style: Styles.regular14.copyWith(color: const Color(0xff363636)),
          ),
        ),
      ],
    );
  }
}
