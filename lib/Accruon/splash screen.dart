import  'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashpage(),
  ));
}
//fashionSplash() {
//}

class splashpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration:  const BoxDecoration(

        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image.network("https://www.istockphoto.com/photo/mini-retro-tv-antenna-receiver-old-fashioned-tv-set-with-remote-red-blue-gradient-gm1308569753-398509000",
            height: 100,
            width: 100,),
                Text("TV store",
                  style: GoogleFonts.gabriela(fontSize: 50,color: Colors.red),),
              ],
              ),
          ),
      ));

  }
}