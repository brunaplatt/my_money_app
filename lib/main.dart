import 'package:flutter/material.dart';
import 'package:my_money_app/src/modules/history/history_page.dart';
import 'package:my_money_app/src/modules/home/page/home_page.dart';
import 'package:my_money_app/src/modules/initial/initial_page.dart';
import 'package:my_money_app/src/modules/login/page/login_page.dart';
import 'package:my_money_app/src/modules/register/page/personal_register_page.dart';
import 'package:my_money_app/src/modules/register/page/register_page.dart';
import 'package:my_money_app/src/router/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Money',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const InitialPage(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: {
        AppRouter.login: (context) => const LoginPage(),
        AppRouter.register: (context) => const RegisterPage(),
        AppRouter.personalRegister: (context) => const PersonalRegisterPage(),
        AppRouter.home: (context) => const HomePage(),
        AppRouter.history: (context) => const HistoryPage(),
      },
    );
  }
}