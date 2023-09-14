import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main(){
  runApp(MaterialApp(home: hotal1(),));
}

class hotal1 extends StatelessWidget {
  const hotal1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          "https://ramada-resort-cochin-kochi.hotelmix.co.uk/data/Photos/OriginalPhoto/7047/704790/704790523/Ramada-Resort-By-Wyndham-Kochi-Exterior.JPEG"),fit: BoxFit.cover),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Crown Plaza \n Kochi,Kerala",style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,color: Colors.white,),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160.0),
                    child: ListTile(
                      leading: ElevatedButton(onPressed: (){},child: Text("80k Reviews"),
                        style: ElevatedButton.styleFrom(primary: Colors.white38,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),),
                      trailing: Icon(Icons.favorite_border,color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Card(elevation: 0,
                child: ListTile(
                    leading:Column(
                      children: [
                        RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.purple,),
                            itemCount: 5,
                            initialRating: 3,minRating: 1,
                            direction: Axis.horizontal,itemSize: 30,itemPadding:  EdgeInsets.symmetric(horizontal: 5),
                            onRatingUpdate: (rating){
                              print("rating");
                            }),
                        Text("8km to LuluMall",style: TextStyle(fontSize: 12),)
                      ],
                    ) ,
                    trailing: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Text("\$200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),),
                          Text("/Per Month",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width: 400,height: 40,
                child: ElevatedButton(onPressed: (){},child: Text("Book Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(primary: Colors.purple,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,10,250,0),
              child: Text("Ramada Plaza Palm Grove",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ramada Plaza Palm Grove hotel on Juhu Beach is ideally located at the shores of the Arabian Sea and is a short distance from prime business districts,"
                  " malls, and airports. Our clean and accommodating guest rooms were designed with your comfort in mind, featuring thoughtful amenities to brighten your stay."
                  "\nWork out in our fitness centre, with steam room, hot tub, and gym. Enjoy our outdoor pool, beauty salon, bookstore, three restaurants, and cyber café. "
                  "Rooms come with coffee and tea maker, high-speed Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie jars. Suites, accessible rooms, and private meeting and conference rooms are available."),
            ),
            NavigationBar(destinations: [
              NavigationDestination(icon: Icon(Icons.search,color: Colors.purple), label: "search"),
              NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
              NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
            ],
            )
          ],
        )

    );
  }
}

