import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart';

class ButtonParser implements Parser<RaisedButton> {
  @override
  RaisedButton parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = component.data;
    final properties = component.properties;
    return RaisedButton(
      onPressed: () => listener?.onClicked(component.action, context),
      child: Text(
        data['label'],
        style: TextStyle(
          fontSize: properties['font_size'],
        ),
      ),
    );
  }
}
