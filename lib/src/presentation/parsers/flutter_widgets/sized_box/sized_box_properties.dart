import 'package:cargo/cargo.dart';

class SizedBoxProperties {
  double width;
  double height;

  SizedBoxProperties({this.width, this.height});

  SizedBoxProperties.fromJson(Map<String, dynamic> json) {
    final spacing = json['spacing'];
    final orientation = json['orientation'];

    width = orientation == 'horizontal' ? Spacing.stringToPixels(spacing) : 0;
    height = orientation == 'vertical' ? Spacing.stringToPixels(spacing) : 0;
  }
}
