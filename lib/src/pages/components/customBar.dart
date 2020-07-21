import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(color: Color(0xff2c3e50), boxShadow: [
        BoxShadow(
          offset: Offset(0, -2),
          blurRadius: 30,
          color: Colors.black.withOpacity(0.16),
        ),
      ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/');
                  },
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'PORTFÓLIO',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () => {},
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Contato',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
