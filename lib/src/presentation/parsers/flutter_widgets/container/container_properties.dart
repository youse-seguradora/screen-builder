import 'package:cargo/cargo.dart';

class ContainerProperties {
  double left;
  double right;
  double bottom;
  double top;
  double height;

  ContainerProperties({
    this.left,
    this.right,
    this.bottom,
    this.top,
    this.height,
  });

  ContainerProperties.fromJson(Map<String, dynamic> json) {
    left = Spacing.stringToPixels(json['left']);
    right = Spacing.stringToPixels(json['right']);
    bottom = Spacing.stringToPixels(json['bottom']);
    top = Spacing.stringToPixels(json['top']);
    height = Spacing.stringToPixels(json['height']) != 0
        ? Spacing.stringToPixels(json['height'])
        : null;
  }
}
