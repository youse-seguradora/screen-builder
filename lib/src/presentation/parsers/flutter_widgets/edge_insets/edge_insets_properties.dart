import 'package:flutter/widgets.dart';

/// EdgeInsets widget properties JSON representation.
class EdgeInsetsProperties {
  final double _left;
  final double _top;
  final double _right;
  final double _bottom;

  /// EdgeInsets property transformed.
  EdgeInsets get insets => EdgeInsets.fromLTRB(_left, _top, _right, _bottom);

  /// Provide a [EdgeInsetsProperties] instance.
  EdgeInsetsProperties(
    this._left,
    this._top,
    this._right,
    this._bottom,
  );

  /// Provide a [EdgeInsetsProperties] instance from a JSON Map.
  factory EdgeInsetsProperties.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return EdgeInsetsProperties(
        json['left'],
        json['top'],
        json['right'],
        json['bottom'],
      );
    }

    return EdgeInsetsProperties(0, 0, 0, 0);
  }
}
