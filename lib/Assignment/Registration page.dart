import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: RegistrationPage(),));
}

class RegistrationPage extends StatefulWidget {

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
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("signup",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
           const Text("create an account it's free",style: TextStyle(fontSize: 15,color: Colors.grey,),),
           const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email ID",
                  prefixIcon: Icon(Icons.contacts_sharp)),
            ),

            ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),suffixIcon: Icon(Icons.visibility_off_sharp)),
            ),
            ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pwd,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),suffixIcon: Icon(Icons.visibility_off_sharp)),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Signup"),),
          TextButton(onPressed: (){}, child: Text("Do you have an account?"))

        ],
      ),

    );




  }


  }


