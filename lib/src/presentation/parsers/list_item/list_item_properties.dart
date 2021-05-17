class ListItemProperties {
  final bool isLast;

  ListItemProperties({this.isLast = false});

  factory ListItemProperties.fromJson(Map<String, dynamic> json) {
    return json != null
        ? ListItemProperties(isLast: json['is_last'] ?? false)
        : ListItemProperties();
  }
}
