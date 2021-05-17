import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

class TitleProperties {
  final TitleSize size;
  final TitleType style;
  final TextAlign textAlign;

  TitleProperties({this.size, this.style, this.textAlign});

  factory TitleProperties.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return TitleProperties(
        size: enumFromString(TitleSize.values, json['size']) ??
            TitleSize.standard,
        style: enumFromString(TitleType.values, json['style']) ??
            TitleType.primary,
        textAlign: enumFromString(TextAlign.values, json['text_align']) ??
            TextAlign.left,
      );
    }

    return TitleProperties(
      size: TitleSize.standard,
      style: TitleType.primary,
      textAlign: TextAlign.left,
    );
  }
}
