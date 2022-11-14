import 'package:flutter/cupertino.dart';
import 'package:izzi_app/pages/home_page.dart';
import 'package:izzi_app/routes/routes.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.LoginPage: (BuildContext context) => const HomePage(),
  };
}
