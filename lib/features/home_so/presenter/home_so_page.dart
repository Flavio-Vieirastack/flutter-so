import 'package:flutter/material.dart';
import 'package:flutter_so/core/constants/assets_constants.dart';
import 'package:flutter_so/features/home_so/presenter/widgets/home_so_bottom_navbar.dart';
import 'package:sizer/sizer.dart';

class HomeSoPage extends StatelessWidget {
  const HomeSoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const HomeSoBottomNavbar(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsConstants.homeBackground,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.folder_copy,
              size: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
