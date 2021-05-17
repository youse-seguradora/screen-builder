import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

class BigNumberProperties {
  final BigNumbersSize size;
  final BigNumbersType style;
  final TextAlign textAlign;

  const BigNumberProperties({this.size, this.style, this.textAlign});

  factory BigNumberProperties.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      return BigNumberProperties(
        size: enumFromString(BigNumbersSize.values, json['size']) ??
            TitleSize.standard,
        style: enumFromString(BigNumbersType.values, json['style']) ??
            TitleType.primary,
        textAlign: enumFromString(TextAlign.values, json['text_align']) ??
            TextAlign.left,
      );
    }

    return const BigNumberProperties(
      size: BigNumbersSize.standard,
      style: BigNumbersType.primary,
      textAlign: TextAlign.left,
    );
  }
}
