import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {

  final String imagePath;

  UserScreen({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text("User Name"),
        centerTitle: true,
      ),
      body: Image.asset(
          imagePath,
      ),
    );
  }
}

