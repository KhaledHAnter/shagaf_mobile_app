import 'package:go_router/go_router.dart';
import 'package:shagaf_mobile_app/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:shagaf_mobile_app/Features/splash/presentation/views/splash_view.dart';
import 'package:shagaf_mobile_app/Features/user_credentials/presentaion/views/login_view.dart';

abstract class AppRouter {
  static const kOnboardingView = '/onboardingView';
  static const kLoginView = '/loginView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
