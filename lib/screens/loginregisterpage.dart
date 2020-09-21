import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:randevusistemi/models/dialogBox.dart';
import 'package:randevusistemi/screens/registerpage.dart';
import 'package:randevusistemi/screens/sifredegistir.dart';
import 'homepage.dart';


class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  String _email, _pass;
  DialogBox dialogBox = DialogBox();
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                      }
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
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Lütfen şifreyi boş bırakmayınız";
                      }
                    },
                    onSaved: (input) => _pass = input,
                    decoration: InputDecoration(
                      labelText: "PASSWORD",
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
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment(1, 0),
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SifreDegistir()));
                      },
                      child: Text(
                        "Şifremi Unuttum",
                        style: TextStyle(
                            color: Colors.teal[200],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.black,
                      color: Colors.blueGrey[100],
                      elevation: 7,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap:girisYap,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: ImageIcon(NetworkImage(
                                "https://www.iconfinder.com/data/icons/social-media-2210/24/Google-512.png")),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Center(
                            child: Text(
                              "Google ile oturum aç",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Müşteri değil misin? "),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    //kayıt ol
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Hemen ol!",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

  }
  Future<void> girisYap() async {
    final form = _formkey.currentState;

    if (form.validate()) {

      form.save();

      try{
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _pass);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
      catch(e){
        dialogBox.information(context, "Hatalı Giriş", "Kullanıcı adı ve ya Şifre hatalı");
        print(e.toString());
      }
    }
  }
}

