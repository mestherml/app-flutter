import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: logoizzi(),
    );
  }
}

Widget logoizzi() {
  return Scaffold(
    body: ListView(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 100.0),
      children: <Widget>[
        Image.asset('images/logo_izzi.png'),
        const SizedBox(
          height: 26.0,
        ),
        inputUser(),
        const SizedBox(
          height: 27.0,
        ),
        inputPassword(),
        const SizedBox(
          height: 27.0,
        ),
        botonIniciarSesion(),
      ],
    ),
  );
}

Widget botonIniciarSesion() {
  return Container(
      margin: const EdgeInsets.all(15),
      height: 79.0,
      width: 330,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: Colors.pinkAccent,
          //backgroundColor: Colors.white,
        ),
        child: const Text(
          'Iniciar Sesión',
          style: TextStyle(fontSize: 20),
        ),
      ));
}

Widget inputUser() {
  return TextField(
    enableInteractiveSelection: false,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
        hintText: 'ecarreno@izzi.mx',
        labelText: 'Correo Electronico',
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        constraints: const BoxConstraints(
          maxHeight: 79,
          maxWidth: 327,
        )),
  );
}

Widget inputPassword() {
  return TextField(
    enableInteractiveSelection: false,
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Password',
      labelText: 'Password',
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: const Icon(Icons.panorama_fish_eye_outlined),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      constraints: const BoxConstraints(
        maxHeight: 79,
        maxWidth: 327,
      ),
    ),
  );
}
