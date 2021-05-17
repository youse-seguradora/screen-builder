import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart';

class PrintClickListener implements ClickListener {
  @override
  void onClicked(UserAction action, BuildContext context) {
    print(action.type);
  }
}
