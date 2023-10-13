import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: months()));
}

class months extends StatelessWidget {
var names=["January","February","March","April","May","June","July","August","September","October","November","December"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Text(names[index]),
        );
  },
    separatorBuilder: (context,index){
    if(index%4==0){
    return Card(
    color: Colors.red,
    child: Text("Advertisement"),);
    }return Text(" ");
    },
    itemCount: names.length),
          );
    }
    }

