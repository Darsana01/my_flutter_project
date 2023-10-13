import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Gridview1(),  ));
}
class Gridview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        //gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 10),

        children:
        List.generate(10, (index) => Card(child: Center(
          child: Image.asset("assets/images/night_city_street_car_.jpg"),
        ),)),),
    );
  }

}