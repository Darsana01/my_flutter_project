import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicUi2(),));
}

class MusicUi2 extends StatelessWidget {
  const MusicUi2({super.key});

  @override
  Widget build(BuildContext context) {
    List imagename = [
      "assets/images/music 1.jpeg",
      "assets/images/music 2.jpeg",
      "assets/images/music3.jpeg",
      "assets/images/music4.jpeg",
      "assets/images/music 5.jpeg",
      "assets/images/music6.jpeg",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Musify.",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body:
      ListView(
        children: [
          Text("Suggested playlist",style: TextStyle(fontSize: 20,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
          CarouselSlider(items: List.generate(6, (index) => Card(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(imagename[index]),),)),
              options:  CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: .5,
                initialPage: 2,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
              )),
          Container(
            child: Text("Recommended for you",style: TextStyle(color: Colors.pinkAccent,fontSize:20,fontWeight: FontWeight.bold)),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music 1.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music 2.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music3.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music3.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music 1.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music 5.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
          Card(
            color: Colors.black,
            child: ListTile(
              leading: Image.asset("assets/images/music6.jpeg"),
              title: Text("Hero",style: TextStyle(color: Colors.pinkAccent),),
              subtitle: Text("Taylor swift",style: TextStyle(color: Colors.white),),
              trailing: Wrap(children: [
                Icon(Icons.star_border,color: Colors.pinkAccent,),
                Icon(Icons.download,color: Colors.pinkAccent,)
              ]),

            ),
          ),
        ],
      ),
    );
  }
}