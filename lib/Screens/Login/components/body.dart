import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_signin_signup/Components/already_have_account_check.dart';
import 'package:welcome_signin_signup/Components/rounded_button.dart';
import 'package:welcome_signin_signup/Components/rounded_input_field.dart';
import 'package:welcome_signin_signup/Screens/Login/components/background.dart';
import 'package:welcome_signin_signup/Screens/Main/main_screen.dart';
import 'package:welcome_signin_signup/Screens/SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset('assets/icons/login.svg',
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
          RoundedButton(text: "LOGIN", press: () {
            Navigator.push(context, MaterialPageRoute(builder : (context) {
              return MainScreen();
            }));
          }),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }));
          })
        ]),
      ),
    );
  }
}
