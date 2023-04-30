// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import './main.dart';

class Login extends StatelessWidget {
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  void validate() {
    if (emailController.text == "123@123.com" &&
        numberController.text == "1234567890") {
      print("Successfull");
    } else {
      print("Not Succeessfull");
    }
  }

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: numberController,
                decoration: InputDecoration(
                  labelText: 'Number',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Login'),
                onPressed: validate,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                  child: Text('New User? Register'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Already Have an Account? Login'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
    );
  }
}
