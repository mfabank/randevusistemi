import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage",style: TextStyle(color:Colors.black45),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}