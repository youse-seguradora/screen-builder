import 'package:flutter/material.dart';

import '../flutter_widgets/icon_button/utils/icons_map.dart';

class TextFormFieldData {
  final String labelText;
  final String helperText;
  final String value;
  final IconData iconData;

  const TextFormFieldData({
    this.labelText,
    this.helperText,
    this.value,
    this.iconData,
  });

  factory TextFormFieldData.fromJson(Map<String, dynamic> json) =>
      TextFormFieldData(
        labelText: json['label_text'] ?? '',
        value: json['value'] ?? '',
        helperText: json['helper_text'] ?? '',
        iconData: icons[json['icon_data']],
      );
}
