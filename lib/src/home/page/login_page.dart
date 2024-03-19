import 'package:flutter/material.dart';
import 'package:my_money_app/src/home/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  late LoginController loginController;
  
  @override
  void initState() {
    super.initState();
    loginController = LoginController();
  }

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
              style: const TextStyle(color: Colors.black, fontSize: 20), 
              decoration: const InputDecoration(
                labelText: "Login",
                labelStyle: TextStyle(color: Colors.black)),
              ),
              
              TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.black, fontSize: 20), 
              decoration: const InputDecoration(
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
                  child: const Text("Login",
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