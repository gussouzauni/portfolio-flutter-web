import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.1,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff2c3e50),
      child: CustomScrollView(
        primary: false,
        scrollDirection: Axis.horizontal,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: 1,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'lib/src/assets/images/screenTwo.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'lib/src/assets/images/screenOne.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'lib/src/assets/images/covid.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'lib/src/assets/images/covid.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
