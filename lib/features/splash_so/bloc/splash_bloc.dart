import 'package:flutter_so/core/main_bloc/flutter_so_main_bloc.dart';
import 'package:flutter_so/features/splash_so/bloc/splash_states.dart';

class SplashBloc extends FlutterSoMainBloc<SplashStates> {
  Future<void> goToHome() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => emit(
        SplashStatesGoToHomeSo(),
      ),
    );
  }
}
