import 'package:flutter/material.dart';
import 'package:flutter_so/core/constants/assets_constants.dart';
import 'package:flutter_so/core/constants/routes_constants.dart';
import 'package:flutter_so/core/extensions/navigator_extensions.dart';
import 'package:flutter_so/features/splash_so/bloc/splash_bloc.dart';
import 'package:flutter_so/features/splash_so/bloc/splash_states.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashSoPage extends StatefulWidget {
  const SplashSoPage({Key? key}) : super(key: key);

  @override
  State<SplashSoPage> createState() => _SplashSoPageState();
}

class _SplashSoPageState extends State<SplashSoPage> {
  late final SplashBloc _splashBloc;
  @override
  void initState() {
    super.initState();
    _splashBloc = SplashBloc()..goToHome();
    _splashBloc.stateOut.listen((event) {
      if (event is SplashStatesGoToHomeSo) {
        context.replace(RoutesConstants.homeSo);
      }
    });
  }

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
