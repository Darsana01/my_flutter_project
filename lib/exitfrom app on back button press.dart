import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SampleHome(),
  ));
}
class SampleHome extends StatelessWidget {
  SampleHome({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("confirm exit !!!!"),
          content: Text("Do you really want to exit"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("Yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);

            }, child: Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);

            }, child: Text("Cancel")),

          ],
        );
      });
    }

    return WillPopScope(
        onWillPop: showAlert,
        child: const Scaffold(
          body: Center(child: Text("press back button to exit !!!"),),
        ));
  }


}