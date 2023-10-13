import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SliverEx(),));
}


 class SliverEx extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             floating: false,
             pinned: true,
             title: const Text("sliver appbar"),
             bottom: AppBar(
               title: Container(
                 width: double.infinity,
                 height: 40,
                 color: Colors.white,
                 child: const TextField(
                   decoration: InputDecoration(
                     hintText: "search here",
                     prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.camera_alt),
                   ),
                 ),
               ),
             ),
           ),
           SliverList(delegate: SliverChildBuilderDelegate(
             childCount: 30,
               (context,index)=>Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                 height: 80,
                 child: Text(style: const TextStyle(fontSize: 30),
                 "User $index"),
               )
           ))
         ],
       ),
     );
   }
 }
