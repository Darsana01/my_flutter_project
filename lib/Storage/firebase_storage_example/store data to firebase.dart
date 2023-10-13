import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(home: FireStoragee(),));
}

class FireStoragee extends StatefulWidget {

  const FireStoragee({Key? key}) : super(key: key);

  @override
  State<FireStoragee> createState() => _FireStorageeState();
}

class _FireStorageeState extends State<FireStoragee> {
  FireStoragee storagee=FireStoragee.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("store images etc"),
      ),
      body: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: ()=>upload("camera"),
                icon: const Icon(Icons.camera_alt),
              label: const Text("Camera"),),
              ElevatedButton.icon(
                onPressed: ()=>upload("gallery"), icon: const Icon(Icons.image),
                label: const Text("Gallery"),)
            ],
          ),
          Expanded(child: FutureBuilder(
            //if firebase connection is success load data from firebase
            
              builder: (context,AsyncSnapshot<List<Map<String,dynamic>>>snapshot){
                if(snapshot.connectionState==ConnectionState.done) {
                  return ListView.builder(itemBuilder: (context, index) {});
                }
    return const Center(child: CircularProgressIndicator());
    }))
        ],
      ),),

    );
  }
  loadData(){}

 Future<void> upload(String imginput)async {
    final picker=ImagePicker();
    XFile?pickedImage;   //sore platform dependent image path
   
   try {
     pickedImage = await picker.pickImage(
         source: imginput == "camera" ? ImageSource.camera : ImageSource
             .gallery,
         maxWidth: 1920);
     final String filename=path.basename(path.basename(pickedImage!.path));
     File imageFile=File(pickedImage.path);

   try{
     await storagee.ref(filename).putFile(imageFile,SettableMetadata(
       customMetaData:{
         'upload_by':'it me xxxx',
         'description':'some Description'
       }));
     setState(() {});
   }on FirebaseException catch(e){
     print(e);
   }

   }catch(e){
     print(e);
   }
 }
}
