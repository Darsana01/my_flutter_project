import 'package:flutter/material.dart';
import 'Database operation.dart';

class Signup_Form extends StatelessWidget {
  var formkey1 = GlobalKey<FormState>();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey1,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "create an Account,Its free",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: conname,
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Name is required";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: conemail,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "Enter valid email";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                  controller: pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else if (pass.text != cpass.text) {
                      return "Password not matched";
                    } else {
                      return null;
                    }
                  },
                  controller: cpass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                      MaterialStateProperty.all(const Size(330, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),

                  onPressed: () async {
                    final valid1 = formkey1.currentState!.validate();
                    if (valid1) {

                    }
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Alredy have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Form()));
                      },
                      child: const Text(
                        "Login!!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

