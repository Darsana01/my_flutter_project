import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  const StackEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                  image: const DecorationImage(image: NetworkImage
                    ("https://unsplash.com/photos/a-close-up-of-a-cell-phone-with-a-purple-background-voOla3T8TAM"))
              ),
            ),
            const Positioned(
                top: 20,
                left: 30,
                child: Text(
                  "data my data for stack",
                  style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
                )),
            Positioned(
              right: 50,
              bottom: 30,
              child: Container(
                height: 50,
                width: 100,
                child: const Text(
                  'Rating 4',
                  style: TextStyle(fontSize: 25, color: Colors.black87),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

