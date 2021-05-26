/// Container widget properties JSON representation.
class ContainerProperties {
  /// Left Container padding;
  double left;

  /// Right Container padding;
  double right;

  /// Bottom Container padding;
  double bottom;

  /// Top Container padding;
  double top;

  /// Container height;
  double height;

  /// Provide a [ContainerProperties] instance.
  ContainerProperties({
    this.left,
    this.right,
    this.bottom,
    this.top,
    this.height,
  });

  /// Provide a [ContainerProperties] instance from a JSON Map.
  ContainerProperties.fromJson(Map<String, dynamic> json) {
    left = json['left'];
    right = json['right'];
    bottom = json['bottom'];
    top = json['top'];
    height = json['height'] != 0 ? json['height'] : null;
  }
}
