import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../form/elements/wrap_form_property.dart';
import 'hidden_data.dart';
import 'hidden_properties.dart';

class HiddenParser implements Parser<WrapFormProperty<String>> {
  @override
  WrapFormProperty<String> parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = HiddenData.fromJson(component.data);
    final properties = HiddenProperties.fromJson(component.properties);

    return WrapFormProperty(
      formKey: properties.key,
      value: () => data.value,
      child: Container(),
    );
  }
}
