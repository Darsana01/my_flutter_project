import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import '../../hive using adapter/database/HiveDb.dart';
import '../../hive using adapter/model/user_model.dart';
import 'Login.dart';

void main()async{
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userdata');
  runApp(GetMaterialApp(home: HiveRegistration(),));
}

class HiveRegistration extends StatelessWidget {
  final hemail = TextEditingController();
  final hpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Registration"),
      ),
      body: Column(
        children: [
          TextField(
            controller: hemail,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Email"),
          ),
          TextField(
            controller: hpass,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "password"),
          ),
          ElevatedButton(
              onPressed: () async {
                final RegUserList = await HiveDb.instance.getUser();
                validatedRegistration(RegUserList);
                hemail.text = "";
                hpass.text = "";
              },
              child: Text("Register Here"))
        ],
      ),
    );
  }

  void validatedRegistration(List<User> RegUserList) async {
    final eemail = hemail.text.trim();
    final epass = hpass.text.trim();
    bool userfound = false;

    final validateEmail =
    EmailValidator.validate(eemail); //if entered email is valid then true

    if (eemail != "" && epass != "") {
      if (validateEmail == true) {
        await Future.forEach(RegUserList, (userfromhive) {
          if (userfromhive.email == eemail) {
            userfound = true;
          } else {
            userfound = false;
          }
        });
        if (userfound == true) {
          Get.snackbar("Error", "User already Registered / Exist",
              colorText: Colors.red);
        } else {
          final passvalidation = checkpassword(epass);
          if (passvalidation == true) {
            final user = User(email: eemail, password: epass);
            await HiveDb.instance.addUser(user);
            Get.to(HiveLoginPage());
            Get.snackbar("Succes", "Registration Sucessful",
                colorText: Colors.green);
          }
        }
      } else {
        Get.snackbar("Error", "Enter a valid email", colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fielde must not be empty", colorText: Colors.red);
    }
  }

  bool checkpassword(String epass) {
    if (epass.length < 6) {
      Get.snackbar("Error", "Password length error", colorText: Colors.red);
      return false;
    } else {
      return true;
    }
  }
}