import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

class TextProperties {
  final TextSize size;
  final TextType style;
  final TextWeight weight;
  final TextAlign textAlign;

  const TextProperties({this.size, this.style, this.weight, this.textAlign});

  factory TextProperties.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return TextProperties(
        size:
            enumFromString(TextSize.values, json['size']) ?? TitleSize.standard,
        style:
            enumFromString(TextType.values, json['style']) ?? TitleType.primary,
        weight: enumFromString(TextWeight.values, json['style']) ??
            TextWeight.regular,
        textAlign: enumFromString(TextAlign.values, json['text_align']) ??
            TextAlign.left,
      );
    }

    return const TextProperties(
      size: TextSize.standard,
      style: TextType.primary,
      weight: TextWeight.regular,
      textAlign: TextAlign.left,
    );
  }
}
