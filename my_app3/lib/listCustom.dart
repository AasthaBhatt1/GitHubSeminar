import 'package:flutter/material.dart';

class FourthDay  extends StatelessWidget {
  // custom widget
  Widget customTitle(int no ,String sub,IconData randomIcon){
    return ListTile(
      title: Text("Tile $no"),
      subtitle: Text("$sub"),
      leading: Icon(randomIcon),
      onTap:(){
        print("$no");
      }

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list View"),
      ),
      body: ListView(
        children: [
          customTitle(1,"First",Icons.email),
           customTitle(2,"Second",Icons.access_alarm),
            customTitle(3,"Third",Icons.phone),
             customTitle(4,"Fourth",Icons.mail),  
        ],
        
      )
    );      
  }
}