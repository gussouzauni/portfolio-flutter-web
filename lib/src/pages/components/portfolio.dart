import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text('Grid One....'),
                  color: Colors.purple[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Grid Two...'),
                  color: Colors.green[600],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Grid Three...'),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
