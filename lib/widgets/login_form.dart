import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Initially password is obscure
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(),
                    hintText: 'email@johndoe.com',
                  ),
                ),
                SizedBox(height: 17.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(),
                    suffixIcon: FlatButton(
                      onPressed: _toggle,
                      child: new Icon(_obscureText
                          ? FontAwesome5.eye
                          : FontAwesome5.eye_slash),
                    ),
                  ),
                  validator: (val) =>
                      val.length < 6 ? 'Password too short.' : null,
                  obscureText: _obscureText,
                ),
                Row(children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xffec1c40),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        )
      ],
    );
  }
}
