import 'package:cargo/cargo.dart';
import 'package:core/core.dart';

class ButtonProperties {
  final YouseButtonType type;
  final YouseButtonSize size;
  final bool isAllCaps;

  ButtonProperties({this.type, this.size, this.isAllCaps});

  factory ButtonProperties.fromJson(Map<String, dynamic> json) =>
      ButtonProperties(
          type: enumFromString(YouseButtonType.values, json["type"]),
          size: enumFromString(YouseButtonSize.values, json["size"]),
          isAllCaps: json["is_all_caps"]
      );
}