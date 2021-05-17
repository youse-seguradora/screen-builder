import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';

class YouseLoadingParser implements Parser<YouseLoading> {
  @override
  YouseLoading parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    return YouseLoading();
  }
}
