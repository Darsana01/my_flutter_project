import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String email;
   Home ({super.key,required this.email,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $email"),
      ),
    );
  }
}
