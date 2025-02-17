import 'package:flutter/material.dart';
import 'package:myportfolio/src/utils/utils.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<String> images = [
    'assets/images/duo-programador/duo1.png',
    'assets/images/app-covid/covid.png',
    'assets/images/vera-chatbot/vera2.png',
    'assets/images/vera-chatbot/vera1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorTwo,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.2,
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(15),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 10),
              child: Image.asset(
                images[index],
                width: 417,
                height: 848,
              ),
            );
          }),
    );
  }
}
