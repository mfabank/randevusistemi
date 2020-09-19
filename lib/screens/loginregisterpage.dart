import 'package:flutter/material.dart';

import 'homepage.dart';



class LoginRegisterPage extends StatefulWidget {
  @override
  _LoginRegisterPageState createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
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
            child: Column(
              children: [
                TextField(
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
                TextField(
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
                  height: 40,
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
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
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
                            "Google ile giriş yap",
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
          SizedBox(height: 20),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Müşteri değil misin ? "),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Hemen ol!",
                    style: TextStyle(color: Colors.blueGrey,decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


}