import 'package:flutter/material.dart';
import 'upload_image_screen.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'login_screen.dart'; // Import LoginScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut(); // Sign out
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UploadImageScreen()),
            );
          },
          child: Text('Upload Image'),
        ),
      ),
    );
  }
}
