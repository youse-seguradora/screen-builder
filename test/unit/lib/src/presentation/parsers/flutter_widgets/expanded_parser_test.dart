import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_builder/screen_builder.dart';

import '../../../../../../mocks/mocks.dart';

void main() {
  ExpandedParser _sut;
  BuildContext _context;

  setUp(() {
    _sut = ExpandedParser();
    _context = MockBuildContext();
  });

  group('ExpandedParser', () {
    test('should convert a map into a ExpandedParser', () {
      final component = Component(
        'ExpandedParser',
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

      expect(widget, isA<Expanded>());
    });
  });
}
