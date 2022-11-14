import 'package:flutter/material.dart';

import 'gridview_number_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                colors: <Color>[
                  Color.fromRGBO(33, 150, 159, 100),
                  Color.fromRGBO(88, 106, 139, 100),
                  Color.fromRGBO(195, 23, 99, 100),
                ],
              ),
            ),
            width: double.infinity,
            height: size.height * 0.4,
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 35),
              width: double.infinity,
              child: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: const GridViewOperationsPage(),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

Widget navigationBar() {
  return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications), label: 'Notificaciones'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuracion'),
  ]);
}
