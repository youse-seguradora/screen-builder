import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../../screen_builder.dart';
import '../../../../domain/exceptions/parser_exception.dart';
import '../../../../domain/parsers/parser.dart';
import 'title_data.dart';
import 'title_properties.dart';

class TitleParser implements Parser<YouseTitle> {
  @override
  YouseTitle parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final TitleData data = TitleData.fromJson(component.data);
    final TitleProperties properties =
        TitleProperties.fromJson(component.properties);

    if (data != null && data.text.isNotEmpty && properties != null) {
      return YouseTitle(
        data.text,
        size: properties.size,
        type: properties.style,
        textAlign: properties.textAlign,
      );
    }

    throw const ParserException("Invalid component");
  }
}
