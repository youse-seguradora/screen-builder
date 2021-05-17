import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../../screen_builder.dart';
import '../../../../domain/exceptions/parser_exception.dart';
import '../../../../domain/parsers/parser.dart';
import 'big_number_data.dart';
import 'big_number_properties.dart';

class BigNumberParser implements Parser<YouseBigNumbers> {
  @override
  YouseBigNumbers parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final BigNumberData data = BigNumberData.fromJson(component.data);
    final BigNumberProperties properties =
        BigNumberProperties.fromJson(component.properties);

    if (data != null && data.text.isNotEmpty && properties != null) {
      return YouseBigNumbers(
        data.text,
        size: properties.size,
        type: properties.style,
        textAlign: properties.textAlign,
      );
    }

    throw const ParserException("Invalid component");
  }
}
