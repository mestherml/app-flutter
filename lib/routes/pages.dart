import 'package:flutter/cupertino.dart';
import 'package:izzi_application/pages/configurations.dart';
import 'package:izzi_application/pages/messages.dart';
import 'package:izzi_application/pages/notifications.dart';
import 'package:izzi_application/pages/search.dart';

import '../pages/detail_technical.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    '/homepage': (context) => const HomePage(),
    '/loginPage': (context) => const LoginPage(),
    '/detailTechPage': (context) => const DetailTechnicalPage(),
    '/configurationsPage': (context) => const ConfigurationsPage(),
    '/notificationsPage': (context) => const NotificationsPage(),
    '/messagePage': (context) => const MessagePage(),
    '/searchPage': (context) => const SearchPage(),
  };
}
