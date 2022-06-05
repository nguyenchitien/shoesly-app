import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoesly/themes/app_theme.dart';

void main() {
  runApp(const ShoeslyApp());
}

class ShoeslyApp extends StatelessWidget {
  const ShoeslyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    );
    return MaterialApp(
      title: 'Shoesly App',
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      home: const Scaffold(),
    );
  }
}
