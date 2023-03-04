import 'package:flutter/material.dart';
import 'package:flutter_so/features/home_so/presenter/widgets/home_so_bottom_navbar.dart';

class HomeSoPage extends StatelessWidget {
  const HomeSoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeSoBottomNavbar(),
      body: Stack(
        children: [],
      ),
    );
  }
}
