import 'package:flutter/material.dart';
import 'package:myportfolio/src/utils/export.dart';
import 'package:myportfolio/src/utils/utils.dart';

class FooterCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: colorTwo,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Copyright © ',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          InkWell(
            onTap: () => CustomUtil()
                .htmlOpenLink('https://www.linkedin.com/in/gussouza/'),
            child: Text(
              'Gussouza',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
