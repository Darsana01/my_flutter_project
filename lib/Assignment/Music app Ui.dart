import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PlayList(),
  ));
}

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    List imageUrl = [
      "https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg",
      "https://i.scdn.co/image/ab67706c0000da84c14667db36e06ca21c2746fb",
      "https://i.scdn.co/image/ab67616d0000b273d37fabc262bcdf3cc3c89553",
      "https://i1.sndcdn.com/avatars-000238077864-9p30th-t500x500.jpg",
      "https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc",
      "https://i.scdn.co/image/ab67616d0000b2739da92b8aa7cbcd57a20fe10e",
    ];
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff121212),
            floating: true,
            pinned: false,
            title: const Center(
              child: Text(
                "Playlist",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff8b3c2),
                ),
              ),
            ),
            bottom: AppBar(
              backgroundColor: Color(0xff121212),
              elevation: 0,
              title: SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff2a2a2a),
                    isDense: true,
                    hintText: "Search....",
                    hintStyle: TextStyle(color: Color(0xfff8b3c2)),
                    suffixIconColor: Color(0xfff8b3c2),
                    suffixIcon: const Icon(
                      Icons.search,
                      grade: -25,
                      weight: 100,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 74, 74, 74),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid.builder(
              itemCount: imageUrl.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrl[index]),
                      )),
                );
              }),
        ],
      ),
    );
  }

}