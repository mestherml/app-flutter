import 'package:flutter/material.dart';
import 'package:izzi_app/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Izzi App',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
