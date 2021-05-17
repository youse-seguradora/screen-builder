import 'package:flutter/material.dart';

import '../flutter_widgets/icon/utils/icons_map.dart';

class MessageData {
  final String title;
  final String description;
  final String imageUrl;
  final IconData iconData;

  const MessageData({
    this.title,
    this.description,
    this.imageUrl,
    this.iconData,
  });

  factory MessageData.fromJson(Map<String, dynamic> json) {
    return MessageData(
      title: json['title'],
      description: json['description'],
      imageUrl: json['image_url'],
      iconData: icons[json['icon']],
    );
  }
}
