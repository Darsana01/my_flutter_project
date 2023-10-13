import 'package:flutter/material.dart';
import 'package:my_flutter_project/Home%20page.dart';
void main(){
  runApp(MaterialApp(home: RegistrationPage(),));
}
class RegistrationPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
return  Scaffold(
  appBar:AppBar(title:const Text("Registration "),
),
body: Form(
  child: Column(
  children: [
 Padding(padding:const EdgeInsets.all(12.0),
  child: TextField(
    decoration:InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)),
        hintText: "Username ",
        labelText: "must an Email ID",
        prefixIcon:const Icon(Icons.person)

    ) ,
  ),
),
    const Padding(
    padding: EdgeInsets.all(12.0),
    child: TextField(
    obscureText: true,
    obscuringCharacter: "*",
    decoration:InputDecoration(
    border: OutlineInputBorder(),
    hintText: "Password ",
    helperText: "password must contain 6 characters",
    labelText: "password",
    prefixIcon: Icon(Icons.visibility_off_sharp)

    ) ,
    ),
    ),

    ElevatedButton(onPressed: (){
      Navigator.of(context).push(
MaterialPageRoute(builder: (context)=>const Homepage()));

          },
        child: const Text(" Registerationpage"))
  ],

  ),
  )

);

  }


}


