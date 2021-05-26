import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/src/presentation/parsers/flutter_widgets/container/container_properties.dart';

import '../../../../screen_builder_seeds.dart';

void main() {
  group('ContainerProperties', () {
    test('should convert a map into a ContainerProperties', () {
      final ContainerProperties sut = ContainerProperties.fromJson(
          ScreenBuilderSeeds.containerPropertiesMap);

      expect(sut.left, 16);
      expect(sut.top, 16);
      expect(sut.right, 16);
      expect(sut.bottom, 16);
      expect(sut.height, 16);
    });
  });
}
