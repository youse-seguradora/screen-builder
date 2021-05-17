import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../../../domain/exceptions/parser_exception.dart';
import 'list_card_properties.dart';

class YouseListCardParser implements Parser<YouseListCard> {
  @override
  YouseListCard parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final properties = ListCardProperties.fromJson(component.properties);
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    if (properties != null) {
      final title = children.first;

      if (title != null) {
        children.remove(title);
      }

      return YouseListCard(
        title: title,
        items: children,
        preventClipping: properties.preventClipping,
      );
    }

    throw const ParserException("Invalid component");
  }
}
