// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class OptionState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton Example'),
          ),
          body: Row(children: <Widget>[
            (Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                height: 100,
                color: Color.fromARGB(255, 123, 134, 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 220, 231, 14),
                  ),
                  child: Text(
                    'Scan',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                height: 100,
                color: Color.fromARGB(255, 123, 134, 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 216, 244, 6),
                  ),
                  child: Text(
                    'Leads',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(25),
                color: Color.fromARGB(255, 123, 134, 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 216, 244, 6),
                  ),
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(25),
                color: Color.fromARGB(255, 123, 134, 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 216, 244, 6),
                  ),
                  child: Text(
                    'Generate QR code',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ]))
          ])),
    );
  }
}
