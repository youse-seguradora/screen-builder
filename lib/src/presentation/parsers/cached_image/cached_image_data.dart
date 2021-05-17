class CachedImageData {
  final String url;

  CachedImageData({this.url});

  factory CachedImageData.fromJson(Map<String, dynamic> json) =>
      CachedImageData(url: json['url']);
}
