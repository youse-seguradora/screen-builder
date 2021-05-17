import 'package:flutter/cupertino.dart';

import '../../../screen_builder.dart';

// TODO: Delete this click listener after implements others type
class DefaultClickListener implements ClickListener {
  @override
  void onClicked(UserAction action, BuildContext context) {
    print(action.properties);
  }
}
