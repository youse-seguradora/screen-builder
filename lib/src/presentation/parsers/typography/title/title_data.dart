class TitleData {
  final String text;

  TitleData({this.text});

  factory TitleData.fromJson(Map<String, dynamic> json) =>
      TitleData(
        text: json["text"] ?? ""
      );
}