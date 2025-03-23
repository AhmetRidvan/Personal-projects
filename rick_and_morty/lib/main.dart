import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/go_router.dart';
import 'package:rick_and_morty/app/theme_settings.dart';
import 'package:rick_and_morty/views/main_view.dart';

void main() {
  runApp(MyApp());
} //44:08

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeSettings().lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
