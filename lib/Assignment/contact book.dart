import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: contacts(),
  ));
}

class contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My contact"),),
      body: ListView(
        children: [
          const Center(child: Text("Contacts"
          ),),
    Card(elevation: 20,shadowColor: Colors.black,
    child: ListTile(leading: Image.asset("assets/icons/contacts.png"),
    title: const Text("farzz"),
    subtitle: const Text("987654321"),
    trailing: const Icon(Icons.arrow_forward_ios),),
    ),
          Card(elevation: 20,shadowColor: Colors.black,
          child: ListTile(leading: Image.asset("assets/icons/contacts.png"),
          title: const Text("Mom"),
          subtitle: const Text("9446890132"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),),

          Card(elevation: 20,shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/profile.png"),
              title: const Text("Rahul"),
              subtitle: const Text("8590159230"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),),),

          Card(elevation: 20,shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/contacts.png"),
              title: const Text("Dad"),
              subtitle: const Text("9446890132"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),),),

          Card(elevation: 20,shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/contacts.png"),
              title: const Text("Sister"),
              subtitle: const Text("9745761670"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),),),

          Card(elevation: 20,shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/contacts.png"),
              title: const Text("Asna"),
              subtitle: const Text("9446890132"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),),),

          Card(elevation: 20,shadowColor: Colors.black,
            child: ListTile(leading: Image.asset("assets/icons/profile.png"),
              title: const Text("Poppzz"),
              subtitle: const Text("9446890132"),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),),),




        ],
      ),
    );
  }


}
