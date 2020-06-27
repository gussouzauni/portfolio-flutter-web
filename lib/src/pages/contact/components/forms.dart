import 'package:flutter/material.dart';

class FormCustom extends StatefulWidget {
  @override
  _FormCustomState createState() => _FormCustomState();
}

class _FormCustomState extends State<FormCustom> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xff2c3e50)),
        width: width / 2.0,
        height: height / 1.5,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Center(
                  child: Text(
                'Entre em contato comigo!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Nome',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
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
                      size: 30,
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
                      size: 30,
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
                      size: 30,
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
                      size: 30,
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
