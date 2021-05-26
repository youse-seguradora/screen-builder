import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';
import 'package:screen_builder/src/presentation/parsers/flutter_widgets/icon_button/icon_button_properties.dart';

import '../../../../screen_builder_seeds.dart';

void main() {
  group('IconButtonProperties', () {
    test('should convert a map into a IconButtonProperties', () {
      final IconButtonProperties sut = IconButtonProperties.fromJson(
          ScreenBuilderSeeds.iconButtonPropertiesMap);

      expect(
          sut.icon, icons[ScreenBuilderSeeds.iconButtonPropertiesMap['icon']]);
      expect(sut.iconSize,
          ScreenBuilderSeeds.iconButtonPropertiesMap['icon_size']);
    });
  });
}
