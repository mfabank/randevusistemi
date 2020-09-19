import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:randevusistemi/screens/loginregisterpage.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [GlobalMaterialLocalizations.delegate],
    supportedLocales: [const Locale('tr')],
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LoginRegisterPage();
  }
}
