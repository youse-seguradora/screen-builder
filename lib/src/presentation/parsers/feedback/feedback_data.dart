class FeedbackData {
  final String title;
  final String description;
  final String titleButtonPrimary;
  final String titleButtonSecondary;

  FeedbackData({
    this.title,
    this.description,
    this.titleButtonPrimary,
    this.titleButtonSecondary,
  });

  factory FeedbackData.fromJson(Map<String, dynamic> json) => FeedbackData(
        title: json['title'],
        description: json['description'],
        titleButtonPrimary: json['title_button_primary'],
        titleButtonSecondary: json['title_button_secondary'],
      );
}
