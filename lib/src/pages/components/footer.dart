import 'package:flutter/material.dart';
import 'dart:html' as html;

class FooterCustom extends StatelessWidget {
  void htmlOpenLink() {
    String url = 'https://www.linkedin.com/in/gussouza/';
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Copyright © ',
            style: TextStyle(fontSize: 18),
          ),
          InkWell(
            onTap: () => htmlOpenLink(),
            child: Text(
              'Gussouza',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
