import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../../../../mocks/mocks.dart';
import '../../../../screen_builder_seeds.dart';

void main() {
  IconButtonParser _sut;
  BuildContext _context;

  setUp(() {
    _sut = IconButtonParser();
    _context = MockBuildContext();
  });

  group('IconButtonParser', () {
    test('should convert a map into a IconButtonParser', () {
      final component = Component(
        'IconButtonParser',
        ScreenBuilderSeeds.iconButtonPropertiesMap,
        null,
        null,
        null,
      );

      final widget = _sut.parseComponent(
        component,
        null,
        _context,
      );

      expect(widget, isA<IconButton>());
      expect(widget.iconSize,
          ScreenBuilderSeeds.iconButtonPropertiesMap['icon_size']);
    });
  });
}
