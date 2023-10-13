import  'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_project/practice/splash.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashpage(),
  ));
}

fashionSplash() {
}

class splashpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
    @override
    void initState() {
      super.initState();
      startTimer();
      startTimer() async {
        var duration = Duration(seconds: 5);
        return new Timer(duration, route);
      }

      route() {
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => SecondScreen()
        )
        );
      }

      initScreen(BuildContext context) {

      }



    return Scaffold(
        body: Container(
          decoration:  const BoxDecoration(

          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://www.istockphoto.com/photo/red-old-tv-on-table-gm1366391811-436923699",
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