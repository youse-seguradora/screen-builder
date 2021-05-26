import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../screen_builder_seeds.dart';

void main() {
  group('EdgeInsetsProperties', () {
    test('should convert a map into a EdgeInsetsProperties', () {
      final EdgeInsetsProperties sut = EdgeInsetsProperties.fromJson(
          ScreenBuilderSeeds.edgeInsetsPropertiesMap);

      expect(sut.insets.left, 16);
      expect(sut.insets.top, 16);
      expect(sut.insets.right, 16);
      expect(sut.insets.bottom, 16);
    });
  });
}
