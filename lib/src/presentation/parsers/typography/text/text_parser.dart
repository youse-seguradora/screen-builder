import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../../screen_builder.dart';
import '../../../../domain/exceptions/parser_exception.dart';
import '../../../../domain/parsers/parser.dart';
import 'text_data.dart';
import 'text_properties.dart';

class TextParser implements Parser<YouseText> {
  @override
  YouseText parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final TextData data = TextData.fromJson(component.data);
    final TextProperties properties =
        TextProperties.fromJson(component.properties);

    if (data != null && data.text.isNotEmpty && properties != null) {
      return YouseText(
        data.text,
        size: properties.size,
        type: properties.style,
        weight: properties.weight,
        textAlign: properties.textAlign,
      );
    }

    throw const ParserException("Invalid component");
  }
}
