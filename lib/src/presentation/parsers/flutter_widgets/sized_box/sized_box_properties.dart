/// SizedBox Widget properties representation.
class SizedBoxProperties {
  /// SizedBox width.
  double width;

  /// SizedBox height.
  double height;

  /// Provide a [SizedBoxProperties] instance.
  SizedBoxProperties({this.width, this.height});

  /// Provide a [SizedBoxProperties] instance from a JSON Map.
  SizedBoxProperties.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }
}
