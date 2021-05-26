class SizedBoxProperties {
  double width;
  double height;

  SizedBoxProperties({this.width, this.height});

  SizedBoxProperties.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }
}
