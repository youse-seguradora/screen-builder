import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../../../../mocks/mocks.dart';
import '../../../../screen_builder_seeds.dart';

void main() {
  SizedBoxParser _sut;
  BuildContext _context;

  setUp(() {
    _sut = SizedBoxParser();
    _context = MockBuildContext();
  });

  group('SizedBoxParser', () {
    test('should convert a map into a SizedBoxParser', () {
      final component = Component(
        'SizedBoxParser',
        ScreenBuilderSeeds.sizedBoxPropertiesMap,
        null,
        null,
        null,
      );

      final widget = _sut.parseComponent(
        component,
        null,
        _context,
      );

      expect(widget, isA<SizedBox>());
      expect(widget.height, 16);
    });
  });
}
