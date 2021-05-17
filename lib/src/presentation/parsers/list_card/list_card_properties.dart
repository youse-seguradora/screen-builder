class ListCardProperties {
  final bool preventClipping;

  ListCardProperties({this.preventClipping});

  factory ListCardProperties.fromJson(Map<String, dynamic> json) =>
      ListCardProperties(
        preventClipping: json['prevent_clipping'],
      );
}
