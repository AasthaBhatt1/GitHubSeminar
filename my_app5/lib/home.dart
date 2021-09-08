import 'package:flutter/material.dart';
import 'package:my_app5/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthService().signOut().then((value) {
              Navigator.pop(context);
            });
          },
          child: Text("Sign Out"),
        ),
      ),
    );
  }
}



        
