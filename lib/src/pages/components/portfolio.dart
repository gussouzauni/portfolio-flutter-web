import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.0,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff2c3e50),
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                      'https://gussouzauni.github.io/portfolio/img/portfolio/duoprogramador/screen_perfil.png'),
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
