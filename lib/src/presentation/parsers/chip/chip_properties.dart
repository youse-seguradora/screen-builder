class ChipProperties {
  final bool selected;

  ChipProperties({this.selected});

  factory ChipProperties.fromJson(Map<String, dynamic> json) => ChipProperties(
        selected: json['selected'],
      );
}
