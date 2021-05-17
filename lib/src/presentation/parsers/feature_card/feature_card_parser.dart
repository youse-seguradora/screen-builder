import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../../../domain/exceptions/parser_exception.dart';
import 'feature_card_data.dart';
import 'feature_card_properties.dart';

class FeatureCardParser implements Parser<Container> {
  @override
  Container parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = FeatureCardData.fromJson(component.data);
    final properties = FeatureCardProperties.fromJson(component.properties);

    if (_isValidFeatureCard(data, properties)) {
      return Container(
        height: properties.height,
        child: FeatureCard(
          viewModel: FeatureCardUiModel(
            title: data.title,
            description: data.description,
            invisibleButton: data.invisibleButton,
            illustration: CachedImage(
              url: data.illustrationUrl,
              height: data.illustrationHeight,
            ),
            cardType: properties.cardType,
            onSelected: () => listener?.onClicked(component.action, context),
          ),
        ),
      );
    }

    throw const ParserException('Invalid Product Card Widget');
  }

  bool _isValidFeatureCard(
    FeatureCardData data,
    FeatureCardProperties properties,
  ) =>
      data.title != null &&
      data.illustrationUrl != null &&
      data.invisibleButton != null &&
      properties.height != null &&
      properties.height > 0;
}
