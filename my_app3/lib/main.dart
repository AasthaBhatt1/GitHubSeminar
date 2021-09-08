import 'package:flutter/material.dart';
import 'package:my_app3/listCustom.dart';
void main() {
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: DemoTextField(),

));
  
}
class DemoTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Fields"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLength: 25,
              decoration: InputDecoration(
                hintText: "Email Adress",
              ), 
            ),
            SizedBox(
              height: 20,
            ),
            
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              maxLength: 25,
              decoration: InputDecoration(
                hintText: "password",
              ),
              
            ),
            TextFormField(
              
              keyboardType: TextInputType.name,
              maxLength: 25,
              decoration: InputDecoration(
                hintText: "name",
              ),
              
            ),
            SizedBox(
              height: 20.0, 
            ),
            ElevatedButton(
               child: Text("Next Page"),
               onPressed:(){
                 //page Navigation : navigator
                 //Routes: MaterialPageRoute
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return FourthDay();
                  },
                  ),
                 );
               },
            ),
              ],
        ),
      ),
    
      
    );
  }
}