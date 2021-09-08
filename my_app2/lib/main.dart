import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  void playnote(int sound) {
    //audio player object
   final player = AudioPlayer();
   player.play("asset/note$sound.wav");
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold application screen
    return Scaffold(
      //Appbar: Displayed on the top of screen
      appBar: AppBar(
        //title
        title: Text("Flutter"),
      ),
      //Application body
      //ctrl+.
      //Expanded divides the screen in equal parts
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(
          child: Container(
            color:Colors.red,
            child: TextButton(
            child: Text("Red"),
            onPressed: (){
              playnote(1);
              print("red");
            },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.yellow,
            child: TextButton(
            child: Text("Yellow"),
            onPressed: (){
                playnote(2);
              print("yellow");
               },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.transparent,
            child: TextButton(
            child: Text("Aastha"),
            onPressed: (){
                playnote(3);
              print("Aastha");
               },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.purple,
            child: TextButton(
            child: Text("purple"),
            onPressed: (){
                playnote(4);
              print("purple");
               },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.orange,
            child: TextButton(
            child: Text("Orange"),
            onPressed: (){
                playnote(5);
              print("orange");
               },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.green,
            child: TextButton(
            child: Text("Green"),
            onPressed: (){
                playnote(6);
              print("green");
               },
          ),
        ),
        ),
        Expanded(
          child: Container(
            color:Colors.pink,
            child: TextButton(
            child: Text("Pink"),
            onPressed: (){
                playnote(7);
              print("pink");
               },
          ),
        ),
        ),
        ],
      ),
    );
  }
}

