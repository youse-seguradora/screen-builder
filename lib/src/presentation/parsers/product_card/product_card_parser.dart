import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../../../domain/exceptions/parser_exception.dart';
import 'product_card_data.dart';
import 'product_card_properties.dart';

class ProductCardParser implements Parser<Container> {
  @override
  Container parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = ProductCardData.fromJson(component.data);
    final properties = ProductCardProperties.fromJson(component.properties);

    if (_isValidProductCard(data, properties)) {
      return Container(
        height: properties.height,
        child: Builder(
          builder: (context) {
            return ProductCard(
              viewModel: ProductCardUiModel(
                title: data.title,
                description: data.description,
                descriptionBold: data.descriptionBold,
                invisibleButton: data.invisibleButton,
                illustration: CachedImage(
                  url: data.illustrationUrl,
                  height: data.illustrationHeight,
                ),
                ribbon: CachedImage(
                  url: data.ribbonUrl,
                  height: data.ribbonHeight,
                ),
                productType: properties.productType,
                orientation: properties.orientation,
                cardType: properties.cardType,
                onSelected: (_) =>
                    listener?.onClicked(component.action, context),
              ),
            );
          },
        ),
      );
    }

    throw const ParserException('Invalid Product Card Widget');
  }

  bool _isValidProductCard(
    ProductCardData data,
    ProductCardProperties properties,
  ) =>
      data.title != null &&
      data.description != null &&
      data.illustrationUrl != null &&
      properties.height != null &&
      properties.height > 0;
}
