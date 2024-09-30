import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Ensure this file exists
import 'sign_up_screen.dart'; // Ensure this file exists
import 'home_screen.dart'; // Ensure this file exists

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Upload App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(), // Initial screen
      routes: {
        '/sign-up': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
