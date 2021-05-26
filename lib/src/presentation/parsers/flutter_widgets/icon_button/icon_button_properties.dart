import 'package:flutter/material.dart';

import '../icon/utils/icons_map.dart';

/// IconButton Widget properties JSON representation.
class IconButtonProperties {
  /// IconButton icon
  final IconData icon;

  /// IconButton size
  final double iconSize;

  /// Provide a [IconButtonProperties] instance.
  IconButtonProperties({this.icon, this.iconSize});

  /// Provide a [IconButtonProperties] instance from a JSON Map.
  factory IconButtonProperties.fromJson(Map<String, dynamic> json) =>
      IconButtonProperties(
        icon: icons[json["icon"]],
        iconSize: (json["icon_size"] as num)?.toDouble() ?? 24.0,
      );
}
