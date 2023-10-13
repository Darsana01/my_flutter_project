import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: ListView2(),));
}
class ListView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Separator"),),
      body: ListView.separated(itemBuilder: (context,index){
        return const Card(child: Text("Hii"),);
      },
          separatorBuilder: (context,index){
        return const Divider();
          },
          itemCount: 10),
    );
  }
}