import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign In Screen'),
            SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up'); // Navigate to sign-up
              },
              child: Text('Go to Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home'); // Navigate to home
              },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
