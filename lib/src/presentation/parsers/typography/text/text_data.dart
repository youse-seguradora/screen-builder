class TextData {
  final String text;

  const TextData({this.text});

  factory TextData.fromJson(Map<String, dynamic> json) =>
      TextData(text: json["text"] ?? "");
}
