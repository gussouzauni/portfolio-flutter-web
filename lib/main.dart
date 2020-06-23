import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/contact/contact.dart';

import 'src/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/contato': (context) => ContactPage()
      },
    );
  }
}
