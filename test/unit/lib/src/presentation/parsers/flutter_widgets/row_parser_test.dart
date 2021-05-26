import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../../../mocks/mocks.dart';

void main() {
  RowParser _sut;
  BuildContext _context;

  setUp(() {
    _sut = RowParser();
    _context = MockBuildContext();
  });

  group('RowParser', () {
    test('should convert a map into a RowParser', () {
      final component = Component(
        'IconButtonParser',
        null,
        null,
        null,
        null,
      );

      final widget = _sut.parseComponent(
        component,
        null,
        _context,
      );

      expect(widget, isA<Row>());
    });
  });
}
