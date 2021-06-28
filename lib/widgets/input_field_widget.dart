import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';

class AppInputField extends StatefulWidget {
  final String hintText;
  final ValueChanged onChanged;
  final IconData icon;
  final bool obscureText;
  final TextInputType? keyboardType;

  const AppInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.icon,
    this.obscureText = false,
    this.keyboardType,
  }) : super(key: key);

  @override
  _AppInputFieldState createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [AppPallete.basicShadow],
      ),
      child: TextField(
        textAlignVertical: widget.obscureText ? TextAlignVertical.center : null,
        onChanged: widget.onChanged,
        cursorColor: AppPallete.primaryColor,
        obscureText: hidePassword && widget.obscureText,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: AppPallete.iconsColor,
            size: 24,
          ),
          suffixIcon: buildIconVisibility(obscureText: widget.obscureText),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppPallete.placeholderColor,
            fontSize: 15,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  buildIconVisibility({required bool obscureText}) {
    return obscureText
        ? IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            icon: Icon(
              hidePassword ? Icons.visibility_off : Icons.visibility,
              color: AppPallete.iconsColor,
              size: 24,
            ),
          )
        : null;
  }
}
