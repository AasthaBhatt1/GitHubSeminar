// To import The Material library from flutter
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
//flutter pub get

// main method
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ApiScreen()
   ) ); 
}
class ApiScreen extends StatefulWidget {
  

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  @override
  //use to get data even before ui is visible
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  //async waits

  getData() async{
    //we have to write the logic
    Dio dio = new Dio();
   var fetchedData = await dio.get("https://pokeapi.co/api/v2/pokemon/");
   print(fetchedData.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Demo'),
      ),
      body: Container(child: Text('Something'),
      ),


    );
      
  
  }
}