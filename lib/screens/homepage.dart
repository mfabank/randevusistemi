import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:randevusistemi/days/carsamba.dart';
import 'package:randevusistemi/days/cuma.dart';
import 'package:randevusistemi/days/cumartesi.dart';
import 'package:randevusistemi/days/pazartesi.dart';
import 'package:randevusistemi/days/persembe.dart';
import 'package:randevusistemi/days/sali.dart';
import 'package:randevusistemi/models/gunler.dart';
import 'package:randevusistemi/screens/drawerpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Gunler> gunler = [
    Gunler("Pazartesi"),
    Gunler("Salı"),
    Gunler("Çarşamba"),
    Gunler("Perşembe"),
    Gunler("Cuma"),
    Gunler("Cumartesi")
  ];
  Gunler seciliGun;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          "Randevu al",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
      drawer: DrawerPage(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: gunler.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(gunler[index].gunAdi),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      this.seciliGun = gunler[index];

                      if (seciliGun.gunAdi == "Pazartesi") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pazartesi()));
                      } else if (seciliGun.gunAdi == "Salı") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sali()));
                      } else if (seciliGun.gunAdi == "Çarşamba") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Carsamba()));
                      } else if (seciliGun.gunAdi == "Perşembe") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Persembe()));
                      } else if (seciliGun.gunAdi == "Cuma") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cuma()));
                      } else if (seciliGun.gunAdi == "Cumartesi") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cumartesi()));
                      }
                    },
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.only(left: 90),
            child: RotateAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: ["Randevu İçin ", "Gün Seçiniz"],
                textStyle: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
            ),
          ),
        ],
      ),
    );
  }
}
