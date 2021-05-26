import 'package:flutter/widgets.dart';

import '../../../../screen_builder.dart';

/// [Parser] responsible for interpret a JSON and return a Flutter Row
/// Widget.
class RowParser implements Parser<Row> {
  @override
  Row parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return Row(
      children: children ?? [Container()],
    );
  }
}
