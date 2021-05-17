import 'action.dart';

class Component {
  String name;
  Map<String, dynamic> properties;
  Map<String, dynamic> data;
  UserAction action;
  List<Component> children;

  Component(
    this.name,
    this.properties,
    this.data,
    this.action,
    this.children,
  );
}
