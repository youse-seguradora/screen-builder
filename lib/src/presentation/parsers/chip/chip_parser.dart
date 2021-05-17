import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'chip_data.dart';
import 'chip_properties.dart';

class YouseChipParser implements Parser<YouseChip> {
  @override
  YouseChip parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final properties = ChipProperties.fromJson(component.properties);
    final data = ChipData.fromJson(component.data);

    return YouseChip(
      label: data.label,
      selected: properties.selected,
      onSelected: (_) => listener?.onClicked(component.action, context),
    );
  }
}
