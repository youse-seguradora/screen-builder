class ButtonData {
  final String label;

  ButtonData({this.label});

  factory ButtonData.fromJson(Map<String, dynamic> json) =>
      ButtonData(label: json["label_text"] ?? '');
}
