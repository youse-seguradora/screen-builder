import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

import '../../../../screen_builder.dart';
import '../../../domain/parsers/parser.dart';

class ExpandedParser implements Parser<Expanded> {
  @override
  Expanded parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return Expanded(
      child: children?.firstSafety,
    );
  }
}
