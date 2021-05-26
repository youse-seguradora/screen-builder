import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../../../../mocks/mocks.dart';
import '../../../../screen_builder_seeds.dart';

void main() {
  ContainerParser _sut;
  BuildContext _context;

  setUp(() {
    _sut = ContainerParser();
    _context = MockBuildContext();
  });

  group('ContainerParser', () {
    test('should convert a map into a ContainerParser', () {
      final component = Component(
        'ContainerParser',
        ScreenBuilderSeeds.containerPropertiesMap,
        null,
        null,
        null,
      );

      final widget = _sut.parseComponent(
        component,
        null,
        _context,
      );

      expect(widget, isA<Container>());
    });
  });
}
