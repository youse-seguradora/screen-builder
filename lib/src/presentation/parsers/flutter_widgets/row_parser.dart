import 'package:flutter/widgets.dart';

import '../../../../screen_builder.dart';
import '../../../domain/parsers/parser.dart';

class RowParser implements Parser<Row> {
  @override
  Row parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return Row(
      children: children,
    );
  }
}
