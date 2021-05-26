import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/src/presentation/parsers/flutter_widgets/sized_box/sized_box_properties.dart';

import '../../../../screen_builder_seeds.dart';

void main() {
  group('SizedBoxProperties', () {
    test('should convert a map into a SizedBoxProperties', () {
      final SizedBoxProperties sut =
          SizedBoxProperties.fromJson(ScreenBuilderSeeds.sizedBoxPropertiesMap);

      expect(sut.height, 16);
    });
  });
}
