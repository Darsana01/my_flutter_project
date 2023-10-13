import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridviewBuilder(),  ));
}

class GridviewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context,index){
          return Card(
            child: Text("User $index",style: const TextStyle(fontSize: 20),),
          );
        },
      ),
    );  }

}