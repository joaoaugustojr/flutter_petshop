import 'package:flutter/material.dart';

class AppPallete {
  // Basic Colors
  static Color primaryColor = Color(0xFF4094F3);
  static Color primaryColorLight = Color(0xFF75B2F8);
  static Color backgroundColor = Color(0xFFEEEEEE);
  static Color textColor1 = Color(0xFF7E7E7E);
  static Color textColor2 = Color(0xFFA8A8A8);
  static Color placeholderColor = Color(0xFFBFBFBF);
  static Color iconsColor = Color(0xFFA8A8A8);
  static Color facebookColor = Color(0xFF2F5FFB);
  static Color googleColor = Color(0xFFF34040);

  // Shadows
  static BoxShadow basicShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, .15),
    blurRadius: 5,
    offset: Offset(0, 3),
  );
}
