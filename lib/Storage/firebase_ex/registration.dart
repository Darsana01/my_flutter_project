import 'package:flutter/material.dart';
import 'package:my_flutter_project/Storage/firebase_ex/fire%20login.dart';
import 'package:my_flutter_project/Storage/firebase_ex/firebase%20helper.dart';

class FireRegistration extends StatefulWidget {
  const FireRegistration({Key? key}) : super(key: key);

  @override
  State<FireRegistration> createState() => _FireRegistrationState();
}

class _FireRegistrationState extends State<FireRegistration> {
  final remail=TextEditingController();
  final rpass =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firebase login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: remail,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email"),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: rpass,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "password"),
            ),
            const SizedBox(height: 20,),
    ElevatedButton(onPressed: (){
    String username=remail.text.trim();
    String password=rpass.text.trim();
    FireHelper().signup(email:username,pwd:password).then((Message) {
      if(Message==null){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginFire()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(Message)));
      }
    });

    }, child: Text("Register here"),),


    ]
    ),),
        );
  }
}

