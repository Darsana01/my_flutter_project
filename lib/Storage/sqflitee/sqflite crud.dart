import 'package:flutter/material.dart';

import 'Database operation.dart';


void main() {
  runApp(MaterialApp(
    home: sqfliteCrud(),
  ));
}

class sqfliteCrud extends StatefulWidget {
  @override
  State<sqfliteCrud> createState() => _sqfliteCrudState();
}

class _sqfliteCrudState extends State<sqfliteCrud> {
  final name_controller = TextEditingController();
  final phone_controller = TextEditingController();
  var isloading = true;
  List<Map<String, dynamic>> contacts = [];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    //to read data from db
    final data = await SQLHelper.readData();
    setState(() {
      contacts = data;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showsheet(null),
          child: Icon(Icons.add),
        ),
        body: isloading
            ? const Center(
          child: Text("No Data"),
        )
            : ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(contacts[index]["name"]),
                  subtitle: Text(contacts[index]["phone"]),
                  trailing: Wrap(
                    children: [
                      IconButton(
                          onPressed: () {
                            showsheet(contacts[index]['id']);
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                    ],
                  ),
                ),
              );
            }));
  }

  void showsheet(int? id) {
    if (id != null) {
      //element['id'] = id from database
      //firstwhere - first element from contacts that
      final data_fromc_given_id =
      contacts.firstWhere((element) => element['id'] == id);
      name_controller.text = data_fromc_given_id['name'];
      phone_controller.text = data_fromc_given_id['phone'];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(hintText: "Name"),
                ),
                TextField(
                  controller: phone_controller,
                  decoration: InputDecoration(hintText: "Phone Number"),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {
                        await updateContact(id);
                      }
                      Navigator.of(context).pop();
                      name_controller.text = "";
                      phone_controller.text = "";
                    },
                    child:
                    Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact() async {
    await SQLHelper.create_contact(name_controller.text, phone_controller.text);
    loadData(); // to refresh ui whenever we add a new contact
  }

  Future<void> updateContact(int? id) async {
    await SQLHelper.updateContact(
        id, name_controller.text, phone_controller.text);
    loadData();
  }

  void deleteContact(int? id) async {
    await SQLHelper.deleteData(id);
    loadData(); //refresh UI
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Deleted")));
  }
}