import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app5/services.dart';

import 'home.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Form key
  final formKey = GlobalKey<FormState>();
  //Email Variable
  TextEditingController email = TextEditingController();
  //password
  TextEditingController password = TextEditingController();
  

  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: email,
                validator: (val) {
                  if (RegExp(
                          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                      .hasMatch(val!)) {
                    return null;
                  } else {
                    return "Enter valid email";
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter email id",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
                validator: (val) {
                  if (val!.length < 8) {
                    return "Password length should be more than 8";
                  } else {
                    return null;
                  }
                },
                obscureText: show,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    if (show) {
                      show = false;
                    } else {
                      show = true;
                    }
                  });
                },
                child: Text("show"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    AuthService().signUpDemo(email.text, password.text).then((value) {
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                    });
                  }
                },
                child: Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
