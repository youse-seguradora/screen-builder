import 'component.dart';

/// Screen builder screen model representation.
class Screen {
  /// Screen name
  final String name;

  /// Component used as app bar
  final Component appBar;

  /// Lis of component to be displayed
  final List<Component> content;

  /// Provide a [Screen] instance
  Screen(this.name, this.appBar, this.content);
}
