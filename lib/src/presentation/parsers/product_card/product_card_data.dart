import 'package:cargo/cargo.dart';

class ProductCardData {
  final String illustrationUrl;
  final double illustrationHeight;
  final String ribbonUrl;
  final double ribbonHeight;
  final String title;
  final String description;
  final String descriptionBold;
  final String invisibleButton;

  const ProductCardData({
    this.illustrationUrl,
    this.illustrationHeight,
    this.ribbonUrl,
    this.ribbonHeight,
    this.title,
    this.description,
    this.descriptionBold,
    this.invisibleButton,
  });

  factory ProductCardData.fromJson(Map<String, dynamic> json) =>
      ProductCardData(
        title: json['title'],
        description: json['description'],
        descriptionBold: json['description_bold'],
        invisibleButton: json['invisible_button'],
        illustrationUrl: json['illustration_url'],
        illustrationHeight: Spacing.stringToPixels(json['illustration_height']),
        ribbonUrl: json['ribbon_url'],
        ribbonHeight: Spacing.stringToPixels(json['ribbon_height']),
      );
}
