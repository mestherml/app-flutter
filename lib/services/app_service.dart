import 'package:http/http.dart' as http;
//import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../model/technical.dart';

import '../environment/environment.dart';

class LoginService {
  Future<bool> userTech(
      String nombreController, String passwordController) async {
    /*String url =
        'http://jintempdev01.mmredes.com:11005/wfmapp/api/authFlurr/login';*/

    Map data = {
      'usernameOrEmail': nombreController,
      'password': passwordController
    };

    print(data);

    var body = json.encode(data);

    var response = await http.post(
        Uri.parse('${Environment.url}wfmapp/api/authFlurr/login'),
        headers: {"Content-Type": "application/json"},
        body: body);

    SharedPreferences pref = await SharedPreferences.getInstance();
    /*final LocalStorage storage = LocalStorage('my_app_session');*/

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      if (response.body.length > 0) {
        var usuario = response.body;
        final responseModel = Technical.fromJson(usuario);

        pref.setString("token", responseModel.tokenDeAcceso);
        pref.setString("User", responseModel.tecnico.technicalName);

        /*await storage.setItem("token", responseModel.tokenDeAcceso);
        print(storage.setItem("token", responseModel.tokenDeAcceso));*/

        print("usuario: " + usuario.toString());
        //print('responseModel.tokenDeAcceso ${responseModel.tokenDeAcceso}');
        return responseModel.tokenDeAcceso != null ? true : false;
        //return true;
      }
    } else {
      print('error');
      print(response);
    }
    return false;
  }
}
