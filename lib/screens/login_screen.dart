import 'package:FoundMe/widgets/login_form.dart';
import 'package:FoundMe/widgets/login_register_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Image.asset(
                    'assets/images/logofull.png',
                    scale: 0.9,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                  Image.asset(
                    'assets/images/login_page_image.png',
                    scale: 0.7,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  LoginForm(),
                  SizedBox(
                    height: 15,
                  ),
                  LoginRegisterButton(
                    text: "Login",
                    textColor: Colors.white,
                    bgColor: Color(0xffec1c40),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
