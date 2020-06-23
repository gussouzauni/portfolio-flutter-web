import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/components/customBar.dart';
import 'package:myportfolio/src/pages/contact/components/controller.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Controller controller = Controller();

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            CustomBar(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                initialValue: 'Email',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
