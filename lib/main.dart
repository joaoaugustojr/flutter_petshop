import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/assets_config.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';
import 'package:flutter_petshop/screens/auth/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petshop',
      theme: ThemeData(
        fontFamily: AppFonts.mainFontFamily,
        primaryColor: AppPallete.primaryColor,
        scaffoldBackgroundColor: AppPallete.backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
