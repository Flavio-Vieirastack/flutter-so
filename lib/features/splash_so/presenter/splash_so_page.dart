import 'package:flutter/material.dart';
import 'package:flutter_so/core/constants/assets_constants.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashSoPage extends StatelessWidget {
  const SplashSoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 50.h,
              width: 50.w,
              child: Image.asset(
                AssetsConstants.logoWhite,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 31.h,
            ),
            child: Center(
              child: LottieBuilder.asset(
                AssetsConstants.loadingLottie,
              ),
            ),
          )
        ],
      ),
    );
  }
}
