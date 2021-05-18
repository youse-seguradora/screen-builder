import 'screen.dart';

/// Screen builder presentation base model representation
class Presentation {
  /// Screen builder version.
  final String version;

  /// Module that are being used
  final String module;

  /// Theme to be used on widgets parses
  final String theme;

  /// Screen to be displayed
  final Screen screen;

  /// Provide a [Presentation] instance.
  Presentation(this.version, this.module, this.theme, this.screen);
}
