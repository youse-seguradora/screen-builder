import 'package:cargo/cargo.dart';
import 'package:core/core.dart';

class FeatureCardProperties {
  final FeatureCardType cardType;
  final double height;

  const FeatureCardProperties({
    this.cardType,
    this.height,
  });

  factory FeatureCardProperties.fromJson(Map<String, dynamic> json) =>
      FeatureCardProperties(
          cardType: enumFromString(FeatureCardType.values, json['card_type']) ??
              ProductCardType.standard,
          height: Spacing.stringToPixels(json['height']));
}
