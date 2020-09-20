import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:randevusistemi/screens/homepage.dart';
import 'package:randevusistemi/screens/loginregisterpage.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  String _email, _pass;

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
                        return "Lütfen emaili boş bırakmayınız";
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
                            "Kayıt ol",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: kayitOl,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 60
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Zaten üye misiniz ?"),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {//kayıt ol
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginRegisterPage()));
                        },
                        child: Text(
                          "Hemen giriş yap!",
                          style: TextStyle(color: Colors.blueGrey,decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
  Future<void> kayitOl() async {
    final form = _formkey.currentState;

    if (form.validate()) {

      form.save();

      try{
        UserCredential user = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _pass);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
      catch(e){
        print(e.toString());
      }
    }
  }


}