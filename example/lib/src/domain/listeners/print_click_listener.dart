import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart';

// ignore: public_member_api_docs
class PrintClickListener implements ClickListener {
  @override
  void onClicked(UserAction action, BuildContext context) {
    print(action.type);
  }
}
