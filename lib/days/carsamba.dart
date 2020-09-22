import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Carsamba extends StatefulWidget {
  @override
  _CarsambaState createState() => _CarsambaState();
}

class _CarsambaState extends State<Carsamba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "Çarşamba",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
    );
  }
}
