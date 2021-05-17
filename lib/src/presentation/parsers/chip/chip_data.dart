class ChipData {
  String label;

  ChipData({this.label});

  factory ChipData.fromJson(Map<String, dynamic> json) => ChipData(
        label: json['label'],
      );
}
