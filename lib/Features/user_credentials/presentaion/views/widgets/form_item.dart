import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/custom_text_feild.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/custom_text_field_label.dart';

class FormItem extends StatelessWidget {
  const FormItem({
    super.key,
    required this.label,
    required this.hint,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.autoValidate = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
  });

  final String label, hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText, autoValidate;
  final Widget? suffixIcon, prefixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFieldLabel(text: label),
        const Gap(10),
        CustomTextField(
          hint: hint,
          validator: validator,
          onChanged: onChanged,
          obscureText: obscureText,
          autoValidate: autoValidate,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
