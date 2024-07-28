import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key, required this.text, this.onTap, this.isLoading = false});

  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xff20473E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: Styles.medium14.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
