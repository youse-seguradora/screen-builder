import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart';

// ignore: public_member_api_docs
class AppBarParser implements Parser<AppBar> {
  @override
  AppBar parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = component.data;
    final properties = component.properties;
    return AppBar(
      backgroundColor: Colors.red,
      centerTitle: properties['center_title'],
      title: Text(data['title']),
      leading: IconButton(
        onPressed: () => listener?.onClicked(component.action, context),
        icon: Icon(Icons.chevron_left),
      ),
    );
  }
}
