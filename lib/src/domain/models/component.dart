import 'action.dart';

/// Component/Widget model representation.
class Component {
  /// Component name, used to identify
  String name;

  /// Component properties and customizations.
  Map<String, dynamic> properties;

  /// Component data that are displayed on teh screen.
  Map<String, dynamic> data;

  /// Component action, a user interaction
  UserAction action;

  /// Component children list
  List<Component> children;

  /// Provide a [Component] instance.
  Component(
    this.name,
    this.properties,
    this.data,
    this.action,
    this.children,
  );
}
