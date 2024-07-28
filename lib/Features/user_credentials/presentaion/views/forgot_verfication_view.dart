import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/forgot_verfication_view_body.dart';

class ForgotVerficationView extends StatelessWidget {
  const ForgotVerficationView({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotVerficationViewBody(
        phone: phoneNumber,
      ),
    );
  }
}
