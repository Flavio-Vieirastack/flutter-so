import 'package:flutter/material.dart';
import 'package:flutter_so/core/constants/routes_constants.dart';
import 'package:flutter_so/features/home_so/presenter/home_so_page.dart';

class FlutterSoRoutes {
  static Map<String, Widget Function(BuildContext context)> get() {
    return {
      RoutesConstants.homeSo: (context) => const HomeSoPage(),
    };
  }
}
