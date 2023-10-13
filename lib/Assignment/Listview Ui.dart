import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  ));
}
class Listview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Image.asset("assets/images/Apple.jpg"),
            title: Text("Apple"),
            subtitle: Text(""),
            trailing: Text(""),
          ),
        );
      }),
    );}

}