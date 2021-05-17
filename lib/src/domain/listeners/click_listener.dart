import 'package:flutter/cupertino.dart';

import '../models/action.dart';

/// Abstract class for creating a new event click listener implementation.
///
/// {@tool snippet}
///
/// This example shows how to create a new event click listener
/// implementation, in this case every click will print the parameters
/// on the screen.
///
/// ```dart
/// class DefaultClickListener implements ClickListener {
///   @override
///   void onClicked(Action action) {
///     print(action.properties);
///   }
/// }
/// ```
/// {@end-tool}
abstract class ClickListener {
  void onClicked(UserAction action, BuildContext context);
}
