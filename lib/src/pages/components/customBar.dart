import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://github.githubassets.com/images/modules/logos_page/Octocat.png',
            width: 50,
            height: 50,
          ),
          RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Portfolio',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ]),
          ),
        ],
      ),
    );
  }
}
