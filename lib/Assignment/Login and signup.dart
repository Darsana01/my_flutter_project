import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: loginandsignPage(),));
}

class loginandsignPage extends StatefulWidget {

  @override
  State<loginandsignPage> createState() => _loginandsignPageState();
}



class _loginandsignPageState extends State<loginandsignPage> {
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
          const Text("Welcome back!Login your credentials",style: TextStyle(fontSize: 15,color: Colors.grey,),),
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
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),suffixIcon: Icon(Icons.visibility_off_sharp)),
            ),
          ),



          ElevatedButton(onPressed: (){}, child: Text("Login"),),
          TextButton(onPressed: (){}, child: Text("Do you have an account?sign up"))

        ],
      ),

    );




  }


}


