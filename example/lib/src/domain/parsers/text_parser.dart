import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart';

class TextParser implements Parser<Text> {
  @override
  Text parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = component.data;
    final properties = component.properties;
    return Text(
      data['text'],
      style: TextStyle(
        fontSize: properties['font_size'],
      ),
    );
  }
}
