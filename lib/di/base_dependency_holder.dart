import 'package:flutter/material.dart';

abstract class BaseDependencyHolder {
  /// Dependencies are resolved in specified order,
  /// so following dependencies can be resolved using previous ones
  List<Widget Function(Widget)> create();

  Widget inject({required Widget child}) =>
      create().cast<Widget Function(Widget)>()
          .reduce((provider1, provider2) =>
            (widget) =>
              provider2(provider1(widget))
          )(child);
}