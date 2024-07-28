import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
