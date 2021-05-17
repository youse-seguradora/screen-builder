import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../../../domain/exceptions/parser_exception.dart';
import 'checkbox_data.dart';

class YouseCheckboxParser implements Parser<YouseCheckbox> {
  @override
  YouseCheckbox parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = CheckboxData.fromJson(component.data);

    if (data.title != null && data.value != null) {
      return YouseCheckbox(
        label: data.title,
        description: data.description,
        value: data.value,
        selected: data.selected,
        onSelected: (_, __) => listener?.onClicked(component.action, context),
      );
    }

    throw const ParserException('Invalid Checkbox widget');
  }
}
