import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'chip_list_data.dart';
import 'chip_list_properties.dart';

class YouseChipListParser implements Parser<Container> {
  @override
  Container parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final properties = ChipListProperties.fromJson(component.properties);
    final data = ChipListData.fromJson(component.data);

    return Container(
      height: properties.height,
      child: ChipList(
        labels: data.labels,
        selectedIndex: properties.selectedIndex,
        padding: properties.padding.insets,
        onSelected: (_, __) => listener?.onClicked(component.action, context),
      ),
    );
  }
}
