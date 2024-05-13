import 'package:go_router/go_router.dart';

class AppRouter {
  const AppRouter._();

  static final router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      /// Main
      // GoRoute(
      //   path: Routes.home,
      //   name: Routes.home,
      //   builder: (context, state) => const HomeScreen(),
      // ),
    ],
  );
}

class Routes {
  const Routes._();

  /// Main
  static const String home = "/";
}
