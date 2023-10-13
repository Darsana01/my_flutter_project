import 'package:flutter/material.dart';

import '../Home page.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: fashionsign(),));
}

class fashionsign extends StatelessWidget {
  final eml=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          const SizedBox(height: 5,),
          const Text("sign in",style: TextStyle(fontSize: 30),),
          const SizedBox(height: 5,),
          const Text("Hi welcome back,you've been missed"),
        Padding(
        padding: const EdgeInsets.all(20.0),
      child: TextField(controller: eml,
        decoration: InputDecoration(border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
        ),
          hintText: "Email",
          labelText: "Email",

      ),
    ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: "Password ",
                  labelText: "password",
                  suffixIcon: const Icon(Icons.visibility_off_sharp),

              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(onPressed: (){}, child: const Text("forgot password",),),
          ),

          Center(
            child: SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: const Text("Lets Get Started")),
            ),
          ),

          const Text("----------or sign in with----------"),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               IconButton(onPressed: (){}, icon: const Icon(Icons.apple_outlined)),
               IconButton(onPressed: (){}, icon: const Icon(Icons.g_mobiledata_outlined)),
               IconButton(onPressed: (){}, icon: const Icon(Icons.facebook_outlined)),

              ],
            ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 140),
                child: Text("Already have an account?"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.brown,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
        ),
          );
  }
}
