import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/components/customBar.dart';
import 'package:myportfolio/src/pages/components/footer.dart';
import 'package:myportfolio/src/pages/components/portfolio.dart';
import 'package:myportfolio/src/pages/components/resume.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff7159c1), Color(0xfffff)])),
        child: Column(
          children: [
            CustomBar(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Resume(),
                    Portfolio(),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Container(
                        color: Colors.amber,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FooterCustom(),
          ],
        ),
      ),
    );
  }
}
