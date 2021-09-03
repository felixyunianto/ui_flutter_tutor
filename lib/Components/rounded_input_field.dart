import 'package:flutter/material.dart';
import 'package:welcome_signin_signup/Components/text_field_container.dart';
import 'package:welcome_signin_signup/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String textHint;
  final IconData icon, suffix;
  final TextInputType type;
  final bool obsure;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.textHint,
    this.icon = Icons.person,
    this.onChanged,
    this.type = TextInputType.text,
    this.obsure = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            onChanged: onChanged,
            keyboardType: type,
            obscureText: obsure,
            decoration: InputDecoration(
              icon: Icon(icon, color: mainColor),
              suffixIcon: Icon(suffix, color : mainColor),
              hintText: textHint,
              border: InputBorder.none,
            )));
  }
}
