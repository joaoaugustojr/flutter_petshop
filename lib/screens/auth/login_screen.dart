import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';
import 'package:flutter_petshop/screens/auth/register_screen.dart';
import 'package:flutter_petshop/screens/auth/templates/login_template.dart';
import 'package:flutter_petshop/widgets/input_field_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      title: "Welcome Back",
      titleCard: "Login",
      fieldsInputs: Column(
        children: [
          AppInputField(
            hintText: "Email",
            onChanged: (value) {
              print(value);
            },
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 15),
          AppInputField(
            hintText: "Password",
            onChanged: (value) {},
            icon: Icons.lock_outline,
            obscureText: true,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: AppPallete.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  Text(
                    "Remember Me",
                    style:
                        TextStyle(fontSize: 13, color: AppPallete.textColor1),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppPallete.textColor1,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      actionButton: () {
        print("**** Authenticate Login");
      },
      footerText: "Don't have na account? ",
      footerTextAction: "Sign Up",
      footerAction: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RegisterScreen();
            },
          ),
        );
      },
    );
  }
}
