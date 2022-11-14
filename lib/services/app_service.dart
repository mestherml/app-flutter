import 'package:http/http.dart' as http;
import 'dart:convert';

//import '../Environment/environment.dart';

class LoginService {
  Future<http.Response> addProduct(
      String nombreController, String passwordController) async {
    String url = 'http://172.21.141.123:7001/wfm/api/auth/login';

    Map data = {
      'usernameOrEmail': nombreController,
      'password': passwordController
    };

    print(data);

    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);

    print(response);
    if (response.statusCode == 200) {
      if (response.body.length > 0) {
        var usuario = json.encode(response.body);
        print("usuario: " + usuario.toString());
      }
    } else {
      print('error');
      print(response);
    }
    return response;
  }
}
