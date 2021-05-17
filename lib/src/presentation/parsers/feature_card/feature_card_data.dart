import 'package:cargo/cargo.dart';

class FeatureCardData {
  final String illustrationUrl;
  final double illustrationHeight;
  final String title;
  final String description;
  final String invisibleButton;

  const FeatureCardData({
    this.illustrationUrl,
    this.illustrationHeight,
    this.title,
    this.description,
    this.invisibleButton,
  });

  factory FeatureCardData.fromJson(Map<String, dynamic> json) =>
      FeatureCardData(
        title: json['title'],
        description: json['description'],
        invisibleButton: json['invisible_button'],
        illustrationUrl: json['illustration_url'],
        illustrationHeight: Spacing.stringToPixels(json['illustration_height']),
      );
}
