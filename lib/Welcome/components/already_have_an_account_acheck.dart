import 'package:flutter/material.dart';
import 'package:responsive_dashboard/pallete.dart';
import 'package:responsive_dashboard/Log-in/pallete.dart';
import 'package:responsive_dashboard/style/colors.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    this.press,
  }); 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: AppColors.greenHK),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: AppColors.greyHK,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
