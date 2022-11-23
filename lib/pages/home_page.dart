// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/login_page.dart';
import '../options_ruta.dart';
import '../services/app_logout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences sharedPreferences;
  String token = "";
  String user = "";
  final now = DateTime.now();
  String nombreMes = '';
  String nombreDia = '';
  late final diaActual = now.day;
  late final fechaActual = '${nombreDia} ${diaActual}, ${nombreMes}';

  int index = 0;

  @override
  void initState() {
    super.initState();
    checkLogin();
    nomMes();
    nomDia();
  }

  nomDia() {
    num dia = now.weekday;
    switch (dia) {
      case 1:
        nombreDia = "Lunes";
        break;
      case 2:
        nombreDia = "Martes";
        break;
      case 3:
        nombreDia = "Miercoles";
        break;
      case 4:
        nombreDia = "Jueves";
        break;
      case 5:
        nombreDia = "Viernes";
        break;
      case 6:
        nombreDia = "Sabado";
        break;
      case 7:
        nombreDia = "Domingo";
        break;
      default:
        nombreDia = "Invalid day";
    }
    print(nombreDia);
  }

  nomMes() {
    num mes = now.month;
    switch (mes) {
      case 1:
        nombreMes = "Ene";
        break;
      case 2:
        nombreMes = "Feb";
        break;
      case 3:
        nombreMes = "Mar";
        break;
      case 4:
        nombreMes = "Abr";
        break;
      case 5:
        nombreMes = "May";
        break;
      case 6:
        nombreMes = "Jun";
        break;
      case 7:
        nombreMes = "Jul";
        break;
      case 8:
        nombreMes = "Ago";
        break;
      case 9:
        nombreMes = "Sep";
        break;
      case 10:
        nombreMes = "Oct";
        break;
      case 11:
        nombreMes = "Nov";
        break;
      case 12:
        nombreMes = "Dic";
        break;
      default:
        nombreMes = "Invalid month";
        break;
    }

    print(nombreMes);
  }

  checkLogin() async {
    sharedPreferences = await SharedPreferences.getInstance();
    user = sharedPreferences.getString("User")!;

    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
          (Route<dynamic> route) => false);
    }
  }

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
            height: MediaQuery.of(context).size.height / 2.3,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                      icon: const Icon(Icons.logout_outlined),
                      color: Colors.white,
                      onPressed: () {
                        sharedPreferences.clear();
                        sharedPreferences.remove("token");
                        LogoutService().logoutUser(token.trim());
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) => LoginPage()),
                            (Route<dynamic> route) => false);
                      },
                      /*onPressed: () async {
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (contex) => const LoginPage()),
                            (route) => false);
                      },*/
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          CircleAvatar(
                            minRadius: 47.0,
                            maxRadius: 47.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/tecnico.png'),
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
                        Text(
                          'Hola!',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 18)),
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
                    Text(
                      user,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          BootstrapIcons.calendar2_date_fill,
                          size: 18,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          fechaActual,
                          style: const TextStyle(
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/detailTechPage',
                            arguments: {'fecha': fechaActual, 'user': user});
                        /*sharedPreferences.clear();
                        sharedPreferences.remove("token");
                        LogoutService().logoutUser(token.trim());*/
                        /*Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) => LoginPage()),
                            (Route<dynamic> route) => false);*/
                      },
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
        ],
      ),
    );
  }
}
