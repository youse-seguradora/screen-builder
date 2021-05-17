import 'package:cargo/cargo.dart';
import 'package:core/core.dart';

class AppBarProperties {
  final AppBarType type;
  final bool hasLeading;

  AppBarProperties({this.type, this.hasLeading});

  factory AppBarProperties.fromJson(Map<String, dynamic> json) =>
      AppBarProperties(
          type: enumFromString(AppBarType.values, json["type"]),
          hasLeading: json["has_leading"]
      );
}