import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'cached_image_data.dart';
import 'cached_image_properties.dart';

class CachedImageParser implements Parser<CachedImage> {
  @override
  CachedImage parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = CachedImageData.fromJson(component.data);
    final properties = CachedImageProperties.fromJson(component.properties);

    return CachedImage(
      url: data.url,
      height: properties.height,
      width: properties.width,
    );
  }
}
