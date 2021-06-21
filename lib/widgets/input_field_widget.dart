import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';

class AppInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged onChanged;
  final IconData icon;
  final bool? obscureText;
  final TextInputType? keyboardType;

  const AppInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.icon,
    this.obscureText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [AppPallete.basicShadow],
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: AppPallete.primaryColor,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: AppPallete.iconsColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppPallete.placeholderColor,
            fontSize: 15,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
