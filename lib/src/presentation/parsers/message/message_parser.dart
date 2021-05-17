import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'message_data.dart';
import 'message_properties.dart';

class YouseMessageParser implements Parser<YouseMessage> {
  @override
  YouseMessage parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = MessageData.fromJson(component.data);
    final properties = MessageProperties.fromJson(component.properties);

    return YouseMessage(
      title: data.title,
      description: data.description,
      imageUrl: data.imageUrl,
      iconData: data.iconData,
      type: properties.type,
    );
  }
}
