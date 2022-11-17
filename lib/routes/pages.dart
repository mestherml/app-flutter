import 'package:flutter/cupertino.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    '/homepage': (context) => const HomePage(),
    'loginPage': (context) => const LoginPage(),
  };
}
