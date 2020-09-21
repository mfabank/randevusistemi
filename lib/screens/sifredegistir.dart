import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:randevusistemi/screens/loginregisterpage.dart';

class SifreDegistir extends StatefulWidget {
  @override
  _SifreDegistirState createState() => _SifreDegistirState();
}

class _SifreDegistirState extends State<SifreDegistir> {
  String _email;
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 115, 140, 0),
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
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Lütfen emaili boş bırakmayınız";
                      } else {
                        _email = input;
                      }
                      return null;
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(
                      labelText: "EMAIL",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            shadowColor: Colors.black,
            color: Colors.blueGrey[100],
            elevation: 20,
            child: InkWell(
              child: Center(
                child: Text(
                  "Gönder",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                if (_formkey.currentState.validate()) {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _email)
                      .then((value) => print("Kontrol Mail"));
                }
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginRegisterPage()));
              },
              child: Text("Giriş Ekranına Dön"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60),
            child: FadeAnimatedTextKit(
              text: ["Size", "Şifre Sıfırlama", "Bağlantısı Göndereceğiz"],
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.center,
            ),
          ),
        ],
      ),
    );
  }
}
