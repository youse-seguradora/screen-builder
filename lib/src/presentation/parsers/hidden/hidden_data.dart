class HiddenData {
  final dynamic value;

  const HiddenData({
    this.value,
  });

  factory HiddenData.fromJson(Map<String, dynamic> json) => HiddenData(
        value: json['value'] ?? '',
      );
}
