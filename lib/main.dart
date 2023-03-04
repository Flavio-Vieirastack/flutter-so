import 'package:flutter/material.dart';
import 'package:flutter_so/core/routes/flutter_so_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: FlutterSoRoutes.get(),
    );
  }
}
