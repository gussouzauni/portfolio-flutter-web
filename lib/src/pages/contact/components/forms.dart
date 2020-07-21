import 'package:flutter/material.dart';
import 'package:myportfolio/src/pages/contact/controller.dart';
import 'package:myportfolio/src/utils/utils.dart';

class FormCustom extends StatefulWidget {
  final double fontSizeField;
  final double valueWidth;
  final double valueHeight;

  const FormCustom(
      {Key key, this.fontSizeField, this.valueWidth, this.valueHeight})
      : super(key: key);
  @override
  _FormCustomState createState() => _FormCustomState();
}

class _FormCustomState extends State<FormCustom> {
  ContactStore contactStore = ContactStore();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: colorTwo),
        width: width / widget.valueWidth,
        height: height / widget.valueHeight,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                onChanged: contactStore.setName,
                decoration: InputDecoration(
                    hintText: 'Nome',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Telefone',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Descrição',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.description,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "R\$",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.attach_money,
                      size: 24,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 50.0,
              ),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.white,
                disabledColor:
                    Theme.of(context).primaryColorLight.withAlpha(100),
                onPressed: () {},
                child: Text(
                  'Enviar',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
