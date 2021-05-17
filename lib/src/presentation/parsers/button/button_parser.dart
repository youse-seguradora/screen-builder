import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../../../domain/exceptions/parser_exception.dart';
import '../../../domain/listeners/click_listener.dart';
import '../../../domain/models/component.dart';
import '../../../domain/parsers/parser.dart';
import 'button_data.dart';
import 'button_properties.dart';

class ButtonParser implements Parser<YouseButton> {
  @override
  YouseButton parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = ButtonData.fromJson(component.data);
    final properties = ButtonProperties.fromJson(component.properties);

    if (_isValidComponent(component)) {
      return YouseButton(
        data.label,
        type: properties.type,
        size: properties.size,
        isAllCaps: properties.isAllCaps,
        onPressed: () => listener?.onClicked(component.action, context),
      );
    }

    throw const ParserException("Invalid component");
  }

  bool _isValidComponent(Component component) =>
      component.data != null &&
      component.data.isNotEmpty &&
      component.properties != null &&
      component.properties.isNotEmpty;
}
