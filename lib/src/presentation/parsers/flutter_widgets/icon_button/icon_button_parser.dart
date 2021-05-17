import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../domain/exceptions/parser_exception.dart';
import '../../../../domain/listeners/click_listener.dart';
import '../../../../domain/models/component.dart';
import '../../../../domain/parsers/parser.dart';
import 'icon_button_properties.dart';

class IconButtonParser implements Parser<IconButton> {
  @override
  IconButton parseComponent(
      Component component, ClickListener listeners, BuildContext context) {
    final IconButtonProperties properties =
        IconButtonProperties.fromJson(component.properties);

    if (properties != null) {
      return IconButton(
        icon: Icon(
          _isArrowBackIcon(properties.icon)
              ? _getPlatformBackIcon(properties.icon)
              : properties.icon,
          size: properties.iconSize,
        ),
        iconSize: properties.iconSize,
        onPressed: () => listeners?.onClicked(component.action, null),
      );
    }

    throw const ParserException("Invalid component");
  }

  bool _isArrowBackIcon(IconData icon) => icon == Icons.arrow_back;

  IconData _getPlatformBackIcon(IconData icon) =>
      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back;
}
