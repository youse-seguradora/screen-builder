import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'list_item_data.dart';
import 'list_item_properties.dart';

class ListItemParser implements Parser<YouseListItem> {
  @override
  YouseListItem parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = ListItemData.fromJson(component.data);
    final properties = ListItemProperties.fromJson(component.properties);

    return YouseListItem(
      label: data.label,
      description: data.description,
      isLast: properties.isLast,
    );
  }
}
