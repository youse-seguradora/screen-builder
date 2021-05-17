import 'package:cargo/cargo.dart';
import 'package:flutter/cupertino.dart';

import '../../../../screen_builder.dart';
import 'radio_button_data.dart';

class YouseRadioButtonParser implements Parser<YouseRadioButton> {
  @override
  YouseRadioButton parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = RadioButtonData.fromJson(component.data);

    return YouseRadioButton(
      labels: data.labels,
      values: data.values,
      selectedValue: data.selectedValue,
      onSelected: (value) => listener?.onClicked(component.action, context),
    );
  }
}
