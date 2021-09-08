// scorePage.dart
import 'package:flutter/material.dart';


import 'main.dart';

class Score extends StatelessWidget {
  int right;
  int wrong;
  Score(this.right, this.wrong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Right Answer
          Text("$right"),
          // Wrong Answer
          Text("$wrong"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}

