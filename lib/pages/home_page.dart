import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../options_ruta.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                colors: <Color>[
                  //00B0AC C31763
                  Color.fromRGBO(33, 150, 159, 100),
                  Color.fromRGBO(195, 23, 99, 100),
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          CircleAvatar(
                            minRadius: 50.0,
                            maxRadius: 50.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/sin-foto.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Hola!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Marco Reyes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          BootstrapIcons.gift_fill,
                          size: 22,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Lunes 24, Jul',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                SizedBox(
                    height: 58.0,
                    width: 214.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor:
                            const Color.fromRGBO(244, 126, 39, 100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: const [
                            Text(
                              'Activar ruta',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('Activar ruta a las 9:00 PM',
                                style: TextStyle(fontSize: 11))
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  colors: <Color>[
                    //00B0AC C31763
                    Color.fromRGBO(33, 150, 159, 100),
                    Color.fromRGBO(195, 23, 99, 100),
                  ],
                ),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const OptionsPage(),
              ),
            ),
          ),
          bottomNavigationBar(),
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(244, 126, 39, 100),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.house_door_fill),
              label: 'Home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.bell_fill),
              label: 'Notificaciones',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.search),
              label: 'Buscar',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.chat_left_fill),
              label: 'Mensajes',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.gear_fill),
              label: 'Configuracion',
              backgroundColor: Colors.grey),
        ]);
  }
}
