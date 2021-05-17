class RadioButtonData {
  final List<String> labels;
  final List<String> values;
  final String selectedValue;

  const RadioButtonData({this.labels, this.values, this.selectedValue});

  factory RadioButtonData.fromJson(Map<String, dynamic> json) =>
      RadioButtonData(
        labels: (json['labels'] as List)?.map((e) => e as String)?.toList(),
        values: (json['values'] as List)?.map((e) => e as String)?.toList(),
        selectedValue: json['selected_value'],
      );
}
