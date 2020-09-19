import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'drawerpage.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: GradientAppBar(
        title: Text(
          "Randevu al",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColorStart: Colors.black87,
        backgroundColorEnd: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.date_range),
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          _selectDate(context);
        },
      ),
    );
  }

  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      confirmText: "Seç",
      locale: const Locale("tr", "TR"),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) => Theme(data: ThemeData.dark(), child: child),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });

  }


}
