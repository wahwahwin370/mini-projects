// install http from (https://pub.dev/packages/http/install)
//1-add dependencies
//2-run cmd=> flutter pub get
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;//3-import http

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String url='https://jsonplaceholder.typicode.com/posts';//4 url of json data

  //5 get data from json url
  getData() async{
    await http.get(url).then((respone){

    });
  }

  //5 run initState at
  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(

      ),
    );
  }
}
