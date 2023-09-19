import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myprofile(),
  ));
}

class Myprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRttkac1ZjO6Ugh_woWHSxOajDBymf5QQJ3WKXZQ3qHQf1YLNGzDILCVlBiKaOFo2c7SVJnWhn1TzV5u_s",),
              ),
              otherAccountsPictures: [CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSpNWC8pbqyPBG_GSAGQTgCPKJDgKKHwODg34nbnIL6U5xykRk4wvNAxCHUx5h_gWgDdIwo1nKykp3kOfI"),
              ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/8/8b/Cristiano_Ronaldo_WC2022_-_01_%28cropped%29.jpg"),
                ),
              ],
              accountName: Text(
                "Arun🕺",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              accountEmail: Text(
                "arun@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.security),
                title: Text("Privacy"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.accessibility),
                title: Text("Career"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Family"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_fire_department_rounded),
                title: Text("Achievements"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("Payments"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}