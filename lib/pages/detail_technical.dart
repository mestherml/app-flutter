import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../options_ruta.dart';
import 'bottomNavBar.dart';

class DetailTechnicalPage extends StatefulWidget {
  const DetailTechnicalPage({super.key});

  @override
  State<DetailTechnicalPage> createState() => _DetailTechnicalPageState();
}

class _DetailTechnicalPageState extends State<DetailTechnicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 85.0,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  colors: <Color>[
                    Color.fromRGBO(33, 150, 159, 100),
                    Color.fromRGBO(195, 23, 99, 100),
                  ]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Marco Reyes',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                  textAlign: TextAlign.left,
                                ),
                                const CircleAvatar(
                                  minRadius: 20.0,
                                  maxRadius: 20.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/tecnico.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  BootstrapIcons.calendar2_date_fill,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '23 Nov, 22',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.7,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                      width: 350,
                      height: 280,
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
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const OptionsPage(),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenArguments {
  final String user;
  final String fechaActual;

  ScreenArguments(this.user, this.fechaActual);
}
