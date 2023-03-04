import 'package:flutter/material.dart';

extension NavigatorExtensions on BuildContext {
  void goTo(String route, {Object? args}) {
    Navigator.of(this).pushNamed(
      route,
      arguments: args,
    );
  }

  void replace(String route, {Object? args}) {
    Navigator.of(this).pushReplacementNamed(
      route,
      arguments: args,
    );
  }
}
