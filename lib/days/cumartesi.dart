import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Cumartesi extends StatefulWidget {
  @override
  _CumartesiState createState() => _CumartesiState();
}

class _CumartesiState extends State<Cumartesi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "Cumartesi",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
    );
  }
}
