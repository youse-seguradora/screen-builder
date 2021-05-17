import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'card_properties.dart';

class YouseCardParser implements Parser<YouseCard> {
  @override
  YouseCard parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final properties = CardProperties.fromJson(component.properties);
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return YouseCard(
      preventClipping: properties.preventClipping,
      enableShadow: properties.enableShadow,
      margin: properties.margin.insets,
      padding: properties.padding.insets,
      backgroundColor: properties.backgroundColor,
      onPressed: () => listener?.onClicked(component.action, context),
      child: children.firstSafety,
    );
  }
}
