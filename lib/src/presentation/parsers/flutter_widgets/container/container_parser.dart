import 'package:flutter/widgets.dart';

import '../../../../../screen_builder.dart';
import '../../../../utils/list_extension.dart';
import 'container_properties.dart';

/// [Parser] responsible for interpret a JSON and return a Flutter Container
/// Widget.
class ContainerParser implements Parser<Container> {
  @override
  Container parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final ContainerProperties properties =
        ContainerProperties.fromJson(component.properties);
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return Container(
      padding: EdgeInsets.only(
        left: properties.left,
        top: properties.top,
        right: properties.right,
        bottom: properties.bottom,
      ),
      height: properties.height,
      child: children?.firstSafety,
    );
  }
}
