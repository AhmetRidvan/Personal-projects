import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/theme_settings.dart';
import 'package:rick_and_morty/views/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeSettings().lightTheme,
      debugShowCheckedModeBanner: false,
      home: MainView(), //23
    );
  }
}
