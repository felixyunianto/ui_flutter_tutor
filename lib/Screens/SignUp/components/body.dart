import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_signin_signup/Components/already_have_account_check.dart';
import 'package:welcome_signin_signup/Components/rounded_button.dart';
import 'package:welcome_signin_signup/Components/rounded_input_field.dart';
import 'package:welcome_signin_signup/Screens/Login/login_screen.dart';
import 'package:welcome_signin_signup/Screens/SignUp/components/background.dart';
import 'package:welcome_signin_signup/Screens/SignUp/components/or_divider.dart';
import 'package:welcome_signin_signup/Screens/SignUp/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset('assets/icons/signup.svg',
              height: size.height * 0.35),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(textHint: "Email", onChanged: (value) {}),
          RoundedInputField(
              textHint: "Password",
              onChanged: (value) {},
              icon: Icons.lock,
              type: TextInputType.visiblePassword,
              obsure: true,
              suffix: Icons.visibility),
          RoundedButton(text: "SIGN UP", press: () {}),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              }),
          OrDivider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SocialIcon(iconSrc: 'assets/icons/facebook.svg', press: () {}),
            SocialIcon(iconSrc: 'assets/icons/twitter.svg', press: () {}),
            SocialIcon(iconSrc: 'assets/icons/google-plus.svg', press: () {})
          ])
        ],
      ),
    ));
  }
}
