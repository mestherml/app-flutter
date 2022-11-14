import 'package:flutter/material.dart';
//import 'package:izzi_app/pages/gridview_number_page.dart';
//import 'package:izzi_app/pages/home_page.dart';
import 'package:izzi_app/pages/login_page.dart';
import 'package:izzi_app/routes/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: Pages.route,
      initialRoute: "/",
    );
  }
}
