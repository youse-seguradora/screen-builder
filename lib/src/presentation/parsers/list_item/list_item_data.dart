class ListItemData {
  final String label;
  final String description;

  ListItemData({this.label, this.description});

  factory ListItemData.fromJson(Map<String, dynamic> json) => ListItemData(
        label: json['label'],
        description: json['description'],
      );
}
