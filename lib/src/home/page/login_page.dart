import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              style: new TextStyle(color: Colors.black, fontSize: 20), 
              decoration: InputDecoration(
                labelText: "Login",
                labelStyle: TextStyle(color: Colors.black)),
              ),
              
              TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.black, fontSize: 20), 
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.black)),
              ),
              
          bottomSheet: Container (
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ElevatedButton(
              onPressed: _reset,
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  FontWeight: FontWeight.bold,
                ),
              ),
          ),
          ),
          ],
        ),
      ),  
    ),
  } 
}   