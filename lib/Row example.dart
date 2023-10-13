import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Rowexample(),
  ));
}
class Rowexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset("assets/icons/smilee.png"),
          Image.asset("assets/icons/smilee.png"),
        ],

      ),
    );


  }

}