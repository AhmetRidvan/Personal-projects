import 'package:flutter/material.dart';

import 'package:rick_and_morty/app/theme_settings.dart';
import 'package:rick_and_morty/route/app_routes.dart';
import 'package:rick_and_morty/views/app_wiev.dart';

void main() {
  runApp(MyApp()); // 9:50
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes,
      theme: ThemeSettings().lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
