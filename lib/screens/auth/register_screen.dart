import 'package:flutter/material.dart';
import 'package:flutter_petshop/screens/auth/login_screen.dart';
import 'package:flutter_petshop/screens/auth/templates/login_template.dart';
import 'package:flutter_petshop/widgets/input_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      title: "Let's Get Started",
      titleCard: "Register",
      fieldsInputs: Column(
        children: [
          AppInputField(
            hintText: "Name",
            onChanged: (value) {},
            icon: Icons.person_outline,
          ),
          SizedBox(height: 15),
          AppInputField(
            hintText: "Phone",
            onChanged: (value) {},
            icon: Icons.smartphone_outlined,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 15),
          AppInputField(
            hintText: "Email",
            onChanged: (value) {},
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
        ],
      ),
      actionButton: () {
        print("**** Create Account Login");
      },
      footerText: "Already have na account? ",
      footerTextAction: "Login here",
      footerAction: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ),
        );
      },
      initialOffset: 100,
    );
  }
}
