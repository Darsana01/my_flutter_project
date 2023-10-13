import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SharedHome.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uname_controller=TextEditingController();
  final pass_controller=TextEditingController();
  late SharedPreferences preferences;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Perf Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "UserName", border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "PassWord", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: () async {
              preferences=await SharedPreferences.getInstance()!;
              String username=uname_controller.text;
              String password=pass_controller.text;
              if(username!=""&& password!=""){
                preferences.setString("uname",username);
                preferences.setBool("new user", false);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SharedHome()));
              }

            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
