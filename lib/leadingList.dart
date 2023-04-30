// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

var queindex = 0;

class MyAppState extends State<MyApp> {
  void answer() {
    setState(() {
      queindex = queindex + 1;
    });

    print(queindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('leads-listing'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Handle search button press
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 237, 227, 131),
              ),
              child: Text(
                'SHARE | CSV',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 80),
            TextButton(
              onPressed: () {
                // Handle search button press
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 237, 227, 131),
              ),
              child: Text(
                'SEARCH | FILTER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
