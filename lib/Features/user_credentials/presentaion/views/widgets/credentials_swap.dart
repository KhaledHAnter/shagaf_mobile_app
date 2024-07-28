import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';

class CredentialsSwap extends StatelessWidget {
  const CredentialsSwap({
    super.key,
    this.onTap,
    required this.text1,
    required this.text2,
  });

  final void Function()? onTap;
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text1,
          style: Styles.medium14.copyWith(color: Colors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: Styles.semiBold16.copyWith(
              color: const Color(0xffF04C29),
            ),
          ),
        ),
      ],
    );
  }
}
