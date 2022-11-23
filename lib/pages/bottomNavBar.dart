import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottonNavBar extends StatefulWidget {
  final Function currentIndex;
  const BottonNavBar({super.key, required this.currentIndex});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.house_door_fill),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.bell_fill),
              label: 'Notificaciones',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.search),
              label: 'Buscar',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.chat_left_fill),
              label: 'Mensajes',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.gear_fill),
              label: 'Configuracion',
              backgroundColor: Colors.white),
        ],
        currentIndex: index,
        selectedItemColor: const Color.fromRGBO(244, 126, 39, 100),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        unselectedLabelStyle: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
        onTap: (int i) {
          setState(() {
            index = i;
          });
        });
  }
}
