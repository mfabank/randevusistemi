import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'drawerpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TimeOfDay _timeOfDay;

  @override
  void initState() {

    super.initState();
    _timeOfDay=TimeOfDay.now();
  }
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
            Text(
              "${_timeOfDay.hour}:${_timeOfDay.minute}".split(' ')[0],
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
      builder: (context, child) => Theme(data: ThemeData(primarySwatch:Colors.blueGrey,primaryColor: Colors.white,accentColor: Colors.transparent), child: child),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _pickTime();
      });
  }


  _pickTime() async {
    TimeOfDay timeOfDay =await showTimePicker(context: context,initialTime:_timeOfDay,
        builder: (context, child) {
          return(Theme(data: ThemeData(primarySwatch:Colors.blueGrey,primaryColor: Colors.white,accentColor: Colors.blueGrey[100]), child:child));
        });


    if(timeOfDay!=null)
      setState(() {
        _timeOfDay=timeOfDay;
      });
  }
}
