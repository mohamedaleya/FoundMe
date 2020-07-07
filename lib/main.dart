import 'package:FoundMe/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoundMe',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfffde7eb),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(6),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      routes: {
        'login': (context) => LoginScreen(),
      },
    );
  }
}
