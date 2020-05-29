import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


var nama = new TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SQL Lite',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Full Name',
                          ),
                          SizedBox(height: 5.0),
                          Container(
                              padding: new EdgeInsets.all(1.0),
                              child: new Column(children: <Widget>[
                                new TextField(
                                  controller: nama,
                                  decoration: new InputDecoration(
                                    icon: Icon(Icons.person_pin),
                                    hintText: "Enter your full name",
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                              ]))
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                          ),
                          SizedBox(height: 10.0),
                          Container(
                              padding: new EdgeInsets.all(1.0),
                              child: new Column(children: <Widget>[
                                new TextField(
                                    decoration: new InputDecoration(
                                        icon: Icon(Icons.email),
                                        hintText: "Enter your Email",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                        ))),
                              ])),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            
                            child: RaisedButton(
                              color: Colors.teal,
                              child: Text('LOGIN'),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return MyHomePage();
                                  },
                                ));
                              },
                            ),
                          )
                        ]),
                  ])))
    ]));
  }
}
