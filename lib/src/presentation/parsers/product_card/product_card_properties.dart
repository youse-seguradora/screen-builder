import 'package:cargo/cargo.dart';
import 'package:core/core.dart';

class ProductCardProperties {
  final ProductCardType cardType;
  final ProductType productType;
  final ProductCardOrientation orientation;
  final double height;

  const ProductCardProperties({
    this.cardType,
    this.productType,
    this.orientation,
    this.height,
  });

  factory ProductCardProperties.fromJson(Map<String, dynamic> json) =>
      ProductCardProperties(
        cardType: enumFromString(ProductCardType.values, json['card_type']) ??
            ProductCardType.standard,
        productType: enumFromString(ProductType.values, json['product_ype']) ??
            ProductType.auto,
        orientation: enumFromString(
                ProductCardOrientation.values, json['orientation']) ??
            ProductCardOrientation.vertical,
        height: Spacing.stringToPixels(json['height']),
      );
}
