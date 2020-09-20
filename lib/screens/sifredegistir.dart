import 'package:flutter/material.dart';

class SifreDegistir extends StatefulWidget {
  @override
  _SifreDegistirState createState() => _SifreDegistirState();
}

class _SifreDegistirState extends State<SifreDegistir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 115, 0, 0),
              child: Text(
                "hairdresser",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 150, 0, 0),
              child: Text(
                "ErdalKara",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),

    );
  }
}