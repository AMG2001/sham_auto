import 'package:flutter/material.dart';
import 'package:sham_auto_project/pages/login_page/login_page.dart';
import 'package:sham_auto_project/pages/signup_page/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpPage.routeName,
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        SignUpPage.routeName : (context) => SignUpPage(),
      },
    );
  }
}


