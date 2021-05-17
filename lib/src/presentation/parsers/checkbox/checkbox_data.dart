class CheckboxData {
  final String title;
  final String description;
  final bool selected;
  final dynamic value;

  const CheckboxData({
    this.title,
    this.description,
    this.value,
    this.selected,
  });

  factory CheckboxData.fromJson(Map<String, dynamic> json) {
    return CheckboxData(
      title: json['title'],
      description: json['description'],
      value: json['value'],
      selected: json['selected'],
    );
  }
}
