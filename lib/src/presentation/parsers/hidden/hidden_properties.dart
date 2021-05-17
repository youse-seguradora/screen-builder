class HiddenProperties {
  final dynamic key;

  const HiddenProperties({
    this.key,
  });

  factory HiddenProperties.fromJson(Map<String, dynamic> json) =>
      HiddenProperties(
        key: json['key'],
      );
}
