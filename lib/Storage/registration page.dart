import 'package:flutter/material.dart';
import 'package:my_flutter_project/Login%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final name=TextEditingController();
  final uname=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Name"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "username"),
              ),

            ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pwd,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password"),
              ),
            ),
          ElevatedButton(onPressed: () =>storedata(),
    child: const Text("Register here"),)
    ],
    ),
    ),
    );


          }

  void storedata() async {
    String personname=name.text;
    String username=uname.text;
    String password=pwd.text;

    preferences=await SharedPreferences.getInstance();
    preferences.setString("name", personname);
    preferences.setString("uname", username);
    preferences.setString("pass", password);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
  }
  }

