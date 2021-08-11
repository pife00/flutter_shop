import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
       home: Scaffold(
         appBar: AppBar(
           title: Text("My Shop"),
         ),
       ),
    );
  }
}
