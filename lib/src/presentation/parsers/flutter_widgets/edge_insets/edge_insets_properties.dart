import 'package:flutter/widgets.dart';

class EdgeInsetsProperties {
  final double _left;
  final double _top;
  final double _right;
  final double _bottom;

  EdgeInsets get insets => EdgeInsets.fromLTRB(_left, _top, _right, _bottom);

  EdgeInsetsProperties(
    this._left,
    this._top,
    this._right,
    this._bottom,
  );

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