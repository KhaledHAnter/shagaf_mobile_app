import 'package:flutter/material.dart';
import 'package:shagaf_mobile_app/Core/utils/app_router.dart';

void main() {
  runApp(const Shagaf());
}

class Shagaf extends StatelessWidget {
  const Shagaf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Shagaf',
    );
  }
}
