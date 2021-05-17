import 'package:cargo/cargo.dart';

class CachedImageProperties {
  final double height;
  final double width;

  CachedImageProperties({this.height, this.width});

  factory CachedImageProperties.fromJson(Map<String, dynamic> json) {
    return CachedImageProperties(
      height: Spacing.stringToPixels(json['height']),
      width: Spacing.stringToPixels(json['width']),
    );
  }
}
