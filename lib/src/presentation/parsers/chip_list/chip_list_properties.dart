import 'package:cargo/cargo.dart';

import '../flutter_widgets/edge_insets/edge_insets_properties.dart';

class ChipListProperties {
  final int selectedIndex;
  final EdgeInsetsProperties padding;
  final double height;

  ChipListProperties({this.selectedIndex, this.padding, this.height});

  factory ChipListProperties.fromJson(Map<String, dynamic> json) =>
      ChipListProperties(
        selectedIndex: json['selected_index'],
        padding: EdgeInsetsProperties.fromJson(json['padding']),
        height: Spacing.stringToPixels(json['height']),
      );
}
