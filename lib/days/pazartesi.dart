import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:randevusistemi/screens/katagoripage.dart';

class Pazartesi extends StatefulWidget {
  @override
  _PazartesiState createState() => _PazartesiState();
}

class _PazartesiState extends State<Pazartesi> {
  List saatListem = List();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 6;
    final double itemWidth = size.width / 1;
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "Pazartesi",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
      body: Container(
          child: GridView.count(
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 3,
            primary: false,
            padding: EdgeInsets.all(10),
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      var alert = AlertDialog(
                        title: Text(
                          "Seçtiğiniz Gün ve Saat",
                        ),
                        content: Text("Pazartesi : 09:00"),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: () {
                                saatListem.add("09:00");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KatagoriSayfasi()));
                              },
                              child: Text("Onayla")),
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (context) => alert,
                      );
                    },
                    child: Text(
                      "09:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("09:30");
                    },
                    child: Text(
                      "09:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("10:00");
                    },
                    child: Text(
                      "10:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("10:30");
                    },
                    child: Text(
                      "10:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("11:00");
                    },
                    child: Text(
                      "11:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("11:30");
                    },
                    child: Text(
                      "11:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("12:00");
                    },
                    child: Text(
                      "12:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("12:30");
                    },
                    child: Text(
                      "12:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("13:00");
                    },
                    child: Text(
                      "13:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("13:30");
                    },
                    child: Text(
                      "13:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("14:00");
                    },
                    child: Text(
                      "14:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("14:30");
                    },
                    child: Text(
                      "14:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("15:00");
                    },
                    child: Text(
                      "15:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("15:30");
                    },
                    child: Text(
                      "15:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("16:00");
                    },
                    child: Text(
                      "16:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("16:30");
                    },
                    child: Text(
                      "16:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("17:00");
                    },
                    child: Text(
                      "17:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("17:30");
                    },
                    child: Text(
                      "17:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("18:00");
                    },
                    child: Text(
                      "18:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("18:30");
                    },
                    child: Text(
                      "18:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("19:00");
                    },
                    child: Text(
                      "19:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("19:30");
                    },
                    child: Text(
                      "19:30",
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.black12,
                child: InkWell(
                    onTap: () {
                      saatListem.add("20:00");
                    },
                    child: Text(
                      "20:00",
                      textAlign: TextAlign.center,
                    )),
              ),
              RaisedButton(
                  child: Text("Liste yaz"),
                  onPressed: () {
                    print(saatListem);
                  }),
              RaisedButton(
                child: Text("Randevu sil"),
                onPressed: () {
                  saatListem.clear();
                },
              )
            ],
          )),
    );
  }
}
