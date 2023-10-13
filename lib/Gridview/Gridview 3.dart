import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Gridview3(),  ));
}

class Gridview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.count(crossAxisCount: 4,
  children: List.generate(15, (index) => Container(
    decoration: BoxDecoration(
      color: Colors.lime,
      borderRadius: BorderRadius.circular(100)),
    child: Column(
      children: [
        Image.asset("assets/icons/night_city_street_car_113387_240x320.jpg"),
        const Text("Car",style: TextStyle(fontSize: 20),)
      ],
    ))),
    ),
  );

 }

}