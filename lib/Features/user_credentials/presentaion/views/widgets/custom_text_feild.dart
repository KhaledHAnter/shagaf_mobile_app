import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.autoValidate = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
  });

  final String hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText, autoValidate;
  final Widget? suffixIcon, prefixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      autovalidateMode:
          autoValidate ? AutovalidateMode.onUserInteraction : null,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        hintText: hint,
        hintStyle: Styles.regular12.copyWith(color: const Color(0xff969696)),
        fillColor: const Color(0XFFF2F2F2),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        prefixIcon: prefixIcon,
        prefixIconColor: const Color(0XFF969696),
        // prefixIconConstraints:
        //     const BoxConstraints(maxHeight: 16, maxWidth: 16),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color(0XFF969696),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
      borderRadius: BorderRadius.circular(10),
      // borderSide: ,
    );
  }
}
