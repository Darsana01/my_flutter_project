import 'package:flutter/material.dart';
import 'package:my_flutter_project/Home%20page.dart';
void main(){
  runApp(MaterialApp(home: LoginPagE(),));
}

class LoginPagE extends StatelessWidget{
  String username="darsh230";
  String password="darsh859";
  final uname=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Loginscreen"),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(12.0),
            child:TextField(
              controller: uname,
              decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
                  hintText: "Username",
                  helperText: "Username must be an email",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person)

              ),
            ),
          ),
             Padding(
            padding:  EdgeInsets.all(12.0),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: "Password ",
                  helperText: "password must contain 6 charectors",
                  labelText: "password",
                  prefixIcon: Icon(Icons.visibility_off_sharp)
              ) ,
            ),
          ),
          ElevatedButton(onPressed: () {
            if (uname.text != "" && pass.text != "") {
              if (uname.text == username && pass.text == password) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Homepage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Email or password is incorrect"),
                  backgroundColor: Colors.red,));
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Fields must not be empty"),
                    backgroundColor: Colors.red,));
            }
          },
              child: const Text("Login"))
        ],
      ),
    );
  }


}

