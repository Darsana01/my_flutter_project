import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Gridview4(),  ));
}

class Gridview4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return  Scaffold(
  body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    ///way 1
    //childrenDelegate: SliverChildListDelegate(
      //  [
        //  Card(child: Text("1")),
          //Card(child: Text("2")),
        //]),
    ///Way 2
    //childrenDelegate: SliverChildListDelegate(List.generate(10, (index) =>Card(child: Text(1)),)),
    ///Way 3
    childrenDelegate: SliverChildBuilderDelegate(
    childCount: 20,
        (context,index)=>const Padding(padding: EdgeInsets.all(8.0),
        child: Center(child: Card(child: Text("Hello"))),
      )),),);


 }

}