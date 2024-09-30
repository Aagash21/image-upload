import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _image;

  Future<void> _uploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await showDialog<XFile?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Image Source'),
          actions: [
            TextButton(
              onPressed: () async {
                final file = await picker.pickImage(source: ImageSource.camera);
                Navigator.pop(context, file);
              },
              child: Text('Camera'),
            ),
            TextButton(
              onPressed: () async {
                final file = await picker.pickImage(source: ImageSource.gallery);
                Navigator.pop(context, file);
              },
              child: Text('Gallery'),
            ),
          ],
        );
      },
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!, height: 200), // Display the selected image
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
