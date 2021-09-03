import 'package:flutter/material.dart';
import 'package:welcome_signin_signup/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? "Dont have an account ? " : "Already have an account ? ",
            style: TextStyle(color: mainColor)),
        GestureDetector(
            onTap: press,
            child: Text(login ? "Sign Up" : "Sign In",
                style:
                    TextStyle(color: mainColor, fontWeight: FontWeight.bold))),
      ],
    );
  }
}