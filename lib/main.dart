// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:scanner_app/option.dart';
import './login.dart';
import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  String name = "";
  String email = "";
  String number = "";

  void validate() {
    setState(() {
      name = nameController.text;
      email = emailController.text;
      number = numberController.text;
    });
    if (name == "rudra" && email == "123@123.com" && number == "1234567890") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OptionState()),
      );
    } else {
      print("Not Successfull");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scanner App'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                controller: nameController,
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                controller: emailController,
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
                controller: numberController,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Register'),
                onPressed: validate,
              ),
              LoginButton(),
              SizedBox(height: 16.0),
              GestureDetector(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.lightBlue,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
