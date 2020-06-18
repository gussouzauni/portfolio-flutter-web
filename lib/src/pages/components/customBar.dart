import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(color: Color(0xff2c3e50),
          //borderRadius: BorderRadius.circular(45),
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
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
        ],
      ),
    );
  }
}
