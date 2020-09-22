import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class KatagoriSayfasi extends StatefulWidget {
  @override
  _KatagoriSayfasiState createState() => _KatagoriSayfasiState();
}

class _KatagoriSayfasiState extends State<KatagoriSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "İşlem Sayfası",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
    );
  }
}
