import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: registrationsqf(),));
}


class registrationsqf extends StatefulWidget {
  const registrationsqf({Key? key}) : super(key: key);

  @override
  State<registrationsqf> createState() => _registrationsqfState();
}

class _registrationsqfState extends State<registrationsqf> {
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  final email_controller=TextEditingController();
  late SharedPreferences preferences;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: const Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "username"),
              ),

            ),

            Padding(
              padding: EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email"),
              ),

            ),
          ]
      ),
      ),
    );
  }
}
