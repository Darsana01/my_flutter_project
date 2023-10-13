import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/Login%20page.dart';

class RegistrationPage extends StatefulWidget{
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //to validate the entire form

  final formkey=GlobalKey<FormState>();
  var confirmpass;

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Registration"),
      ),
      body: Form(
        child: Column(
          children: [
            const Text("Registration page",
            style: TextStyle(fontSize: 30),),
            TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              validator: (email) {
    if(email!.isEmpty && !email.contains("@")){
    return "Enter a valid email/field must not be empty";
    }else{
    return null;
    }
    },
                ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password"),
              validator: (password) {
                confirmpass=password;
                if (password!.isEmpty || password.length < 6) {
                  return "password length should be greater than 6/must not be empty";
                } else {
                  return null;
                }
              },
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),hintText: "password"),
                validator: (cpassword){
                  if(cpassword!=confirmpass || cpassword!.isEmpty){
                    return"password mismatch /empty";
                  }else{
                    return null;
                  }
                }
              ),
            ),
            ElevatedButton(onPressed:(){
              var isValid=formkey.currentState!.validate();
              if(isValid==true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              }
            } , child: const Text("Registration page"))
          ],
        ),
      ),
    );
  }
}


