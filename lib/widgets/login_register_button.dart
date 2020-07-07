import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color bgColor;

  const LoginRegisterButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.textColor,
      @required this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: RaisedButton(
          color: bgColor,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
