import 'package:flutter/material.dart';

import '../icon/utils/icons_map.dart';

class IconButtonProperties {
  final IconData icon;
  final double iconSize;

  IconButtonProperties({this.icon, this.iconSize});

  factory IconButtonProperties.fromJson(Map<String, dynamic> json) =>
      IconButtonProperties(
        icon: icons[json["icon"]],
        iconSize: (json["icon_size"] as num)?.toDouble() ?? 24.0,
      );
}
