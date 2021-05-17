class BigNumberData {
  final String text;

  BigNumberData({this.text});

  factory BigNumberData.fromJson(Map<String, dynamic> json) =>
      BigNumberData(
        text: json["text"] ?? ""
      );
}