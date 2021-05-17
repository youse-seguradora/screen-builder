import 'package:flutter/widgets.dart';

import '../../../../../screen_builder.dart';
import '../../../../domain/parsers/parser.dart';
import 'sized_box_properties.dart';

class SizedBoxParser implements Parser {
  @override
  Widget parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final SizedBoxProperties properties =
        SizedBoxProperties.fromJson(component.properties);

    return SizedBox(
      width: properties.width,
      height: properties.height,
    );
  }
}
