import 'package:flutter/widgets.dart';

import 'package:screen_builder/screen_builder.dart';

import 'sized_box_properties.dart';

class SizedBoxParser implements Parser<SizedBox> {
  @override
  SizedBox parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final SizedBoxProperties properties =
        SizedBoxProperties.fromJson(component.properties);

    return SizedBox(
      width: properties.width,
      height: properties.height,
    );
  }
}
