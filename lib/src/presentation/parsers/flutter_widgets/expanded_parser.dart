import 'package:flutter/widgets.dart';

import '../../../../screen_builder.dart';
import '../../../utils/list_extension.dart';

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
