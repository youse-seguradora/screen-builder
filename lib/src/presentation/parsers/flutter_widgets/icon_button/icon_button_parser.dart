import 'dart:io';

import 'package:flutter/material.dart';
import '../../../../../screen_builder.dart';

import 'icon_button_properties.dart';

/// [Parser] responsible for interpret a JSON and return a Flutter IconButton
/// Widget.
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
