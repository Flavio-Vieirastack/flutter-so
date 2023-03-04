import 'package:flutter/material.dart';
import 'package:flutter_so/core/constants/routes_constants.dart';
import 'package:flutter_so/core/routes/flutter_so_routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter SO',
          theme: ThemeData.dark(),
          initialRoute: RoutesConstants.splashSo,
          routes: FlutterSoRoutes.get(),
        );
      },
    );
  }
}
