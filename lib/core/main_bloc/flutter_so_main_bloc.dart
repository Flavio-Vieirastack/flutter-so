import 'dart:async';

abstract class FlutterSoMainBloc<T extends Object> {
  final state = StreamController<T>.broadcast();

  Stream<T> get stateOut => state.stream;
  void emit(T event) {
    state.add(event);
  }

  Future<void> close({
    bool enableDrain = true,
  }) async {
    if (enableDrain) {
      await stateOut.drain();
    }
    state.close();
  }
}