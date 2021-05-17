import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../flutter_widgets/edge_insets/edge_insets_properties.dart';

class CardProperties {
  final bool preventClipping;
  final bool enableShadow;
  final EdgeInsetsProperties margin;
  final EdgeInsetsProperties padding;
  final Color backgroundColor;

  CardProperties({
    this.preventClipping,
    this.enableShadow,
    this.margin,
    this.padding,
    this.backgroundColor,
  });

  factory CardProperties.fromJson(Map<String, dynamic> json) {
    return CardProperties(
      preventClipping: json['prevent_clipping'],
      enableShadow: json['enable_shadow'],
      backgroundColor: json['background_color']?.toString()?.toColor(),
      margin: EdgeInsetsProperties.fromJson(json['margin']),
      padding: EdgeInsetsProperties.fromJson(json['padding']),
    );
  }
}
