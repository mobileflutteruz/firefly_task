import 'package:flutter/material.dart';
import 'src/config/di/injection.dart';
import 'src/config/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: AppRouter.router,
    );
  }
}

init() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
}
