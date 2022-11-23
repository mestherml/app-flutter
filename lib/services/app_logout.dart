import 'package:http/http.dart' as http;
import 'dart:convert';
import '../environment/environment.dart';

class LogoutService {
  Future<bool> logoutUser(String token) async {
    var response = await http.post(
        Uri.parse('${Environment.url}wfmapp/api/authFlurr/logout?Token=$token'),
        headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      var usuario = response.body;

      return true;
    } else {
      print('error');
      print(response);
    }

    return false;
  }
}
