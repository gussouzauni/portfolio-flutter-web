import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/components/customBar.dart';
import 'package:myportfolio/src/pages/contact/components/forms.dart';
import 'package:myportfolio/src/pages/contact/controller.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  ContactStore contactStore = new ContactStore();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {}
          if (constraints.maxWidth < 800) {
            return Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            );
          } else {
            return Container(
              width: width,
              height: height,
              child: Column(
                children: [CustomBar(), FormCustom()],
              ),
            );
          }
        },
      ),
    );
  }
}
