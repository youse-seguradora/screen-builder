class AppBarData {
  final String title;

  AppBarData({this.title});

  factory AppBarData.fromJson(Map<String, dynamic> json) =>
      AppBarData(
          title: json["title"]
      );
}