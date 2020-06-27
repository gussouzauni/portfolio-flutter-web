import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/components/customBar.dart';
import 'package:myportfolio/src/pages/components/footer.dart';

import 'portfolio.dart';
import 'resume.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff43bd9d), Color(0xff43bd9d)])),
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
                      padding: EdgeInsets.all(20),
                      child: Container(
                        color: Color(0xff43bd9d),
                        height: 500,
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
