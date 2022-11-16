/*import 'package:flutter/material.dart';

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
      body: loginIizzi(),
    );
  }
}

Widget loginIizzi() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 100.0),
      children: <Widget>[
        imagenIzzi(),
        const Divider(
          height: 20.0,
          color: Colors.transparent,
        ),
        inputUser(),
        const Divider(
          height: 20.0,
          color: Colors.transparent,
        ),
        inputPassword(),
        const Divider(
          height: 30.0,
          color: Colors.transparent,
        ),
        botonIniciarSesion(),
      ],
    ),
  );
}

Widget imagenIzzi() {
  return Container(
    padding: const EdgeInsets.all(20),
    width: 214.0,
    height: 120.0,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/logo_izzi.png'), fit: BoxFit.fitHeight)),
  );
}

Widget botonIniciarSesion() {
  return SizedBox(
      height: 79.0,
      width: 327.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: const Color.fromRGBO(195, 23, 99, 100),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 2, color: Colors.deepOrange),
        ),
        //border: InputBorder.none,
        constraints: const BoxConstraints(
          maxHeight: 79.0,
          maxWidth: 327.0,
        )),
  );
}

Widget inputPassword() {
  return TextField(
    enableInteractiveSelection: false,
    obscureText: true,
    decoration: InputDecoration(
      hintText: '********',
      labelText: 'Password',
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: const Icon(Icons.lock_open),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.deepOrange)),
      constraints: const BoxConstraints(
        maxHeight: 79.0,
        maxWidth: 327.0,
      ),
    ),
  );
}*/

import 'package:flutter/material.dart';
import 'package:izzi_app/routes/pages.dart';
import 'package:izzi_app/routes/routes.dart';
import '../services/app_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginService dataBaseHelper = LoginService();

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final myController = TextEditingController();

  late String email;
  late String password;

  var _passwordVisible;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 100.0),
          children: [
            imagenIzzi(),
            const Divider(height: 27, color: Colors.transparent),
            Container(
              height: 50,
              child: TextField(
                controller: nombreController,
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'ecarreno@izzi.mx',
                    labelText: 'Correo Electronico',
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    constraints: const BoxConstraints(
                      maxHeight: 79,
                      maxWidth: 327,
                    )),
              ),
            ),
            const Divider(
              height: 27,
              color: Colors.transparent,
            ),
            Container(
              height: 50,
              child: TextField(
                controller: passwordController,
                enableInteractiveSelection: false,
                obscureText: _passwordVisible,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  constraints: const BoxConstraints(
                    maxHeight: 79,
                    maxWidth: 327,
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 44.0)),
            SizedBox(
                height: 79.0,
                width: 327.0,
                child: ElevatedButton(
                  onPressed: () {
                    dataBaseHelper.addProduct(nombreController.text.trim(),
                        passwordController.text.trim());
                    Navigator.pushNamed(context, '/homepage');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: const Color.fromRGBO(195, 23, 99, 100),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

Widget imagenIzzi() {
  return Container(
    padding: const EdgeInsets.all(20),
    width: 214.0,
    height: 120.0,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/logo_izzi.png'), fit: BoxFit.fitHeight)),
  );
}
