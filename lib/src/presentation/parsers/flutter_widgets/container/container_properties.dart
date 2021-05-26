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
    left = json['left'];
    right = json['right'];
    bottom = json['bottom'];
    top = json['top'];
    height = json['height'] != 0 ? json['height'] : null;
  }
}
