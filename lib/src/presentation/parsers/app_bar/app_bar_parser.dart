import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../domain/exceptions/parser_exception.dart';
import '../../../domain/listeners/click_listener.dart';
import '../../../domain/models/component.dart';
import '../../../domain/parsers/parser.dart';
import 'app_bar_data.dart';
import 'app_bar_properties.dart';

class YouseAppBarParser implements Parser<YouseAppBar> {
  @override
  YouseAppBar parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final AppBarData data = AppBarData.fromJson(component.data);
    final AppBarProperties properties =
        AppBarProperties.fromJson(component.properties);
    final List<IconButton> children = component.children
        ?.map((component) =>
            Parser.parse(component, context: context) as IconButton)
        ?.toList();

    if (properties != null) {
      final Widget leading = _getLeading(properties.hasLeading, children);

      if (leading != null) {
        children.remove(leading);
      }

      return YouseAppBar(
        type: properties.type,
        leading: leading,
        title: data.title,
        actions: children ?? [],
      );
    }

    throw const ParserException("Invalid component");
  }

  Widget _getLeading(bool hasLeading, List<Widget> children) =>
      hasLeading ? children?.first : null;
}
