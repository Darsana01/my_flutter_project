import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp());
}
class List_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view 4"),),
      body: ListView.custom(
    childrenDelegate: SliverChildBuilderDelegate(
            childCount: 10,(context, index) => const Text("Hello"))),
    );
        //(childrenDelegate: SliverChildListDelegate (
          //List.generate(10, (index) => const Text("Hello")))));

  }

}