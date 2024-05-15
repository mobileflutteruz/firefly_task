import 'package:firefly_task/src/presentation/screen/auth/choose_gender/choose_gender.dart';
import 'package:firefly_task/src/presentation/screen/auth/hobits/habits_page.dart';
import 'package:firefly_task/src/presentation/screen/auth/login/login_page.dart';
import 'package:firefly_task/src/presentation/screen/auth/onbording/onbording_page.dart';
import 'package:firefly_task/src/presentation/screen/auth/register/register_page.dart';
import 'package:firefly_task/src/presentation/screen/auth/splash/splash_page.dart';
import 'package:firefly_task/src/presentation/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  const AppRouter._();

  static final router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      // / Main
      GoRoute(
        path: Routes.splash,
        name: Routes.splash,
        builder: (context, state) => SplashPage(),
      ),
        GoRoute(
        path: Routes.onbording,
        name: Routes.onbording,
        builder: (context, state) => OnboardingPage(),
      ),
      GoRoute(
        path: Routes.loginPage,
        name: Routes.loginPage,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: Routes.register,
        name: Routes.register,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: Routes.home,
        name: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.chooseGender,
        name: Routes.chooseGender,
        builder: (context, state) => const ChooseGender(),
      ),
      GoRoute(
        path: Routes.habitsPage,
        name: Routes.habitsPage,
        builder: (context, state) => HabitsPage(),
      ),
    ],
  );
}

class Routes {
  const Routes._();

  /// Main
  static const String splash = "/";
  static const String home = "/home";
  static const String register = "/register";
  static const String loginPage = "/loginPage";
  static const String onbording = "/onbording";

  static const String chooseGender = "/chooseGender";
  static const String habitsPage = "/habitsPage";
}
