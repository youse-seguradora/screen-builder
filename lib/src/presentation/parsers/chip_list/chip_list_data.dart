class ChipListData {
  final List<String> labels;

  ChipListData({this.labels});

  factory ChipListData.fromJson(Map<String, dynamic> json) {
    final labels = json['labels'];

    return ChipListData(
      labels: labels != null && labels is List
          ? labels.map((e) => e.toString()).toList()
          : [],
    );
  }
}
