import 'action_response.dart';

/// Widget json model representation.
///
/// [ComponentResponse] is used to parse the json and handle the properties
/// that will be used to parse a json to a widget.
class ComponentResponse {
  /// Component parser name, key used to found it responsible parser.
  final String name;

  /// Component properties and customizations.
  final Map<String, dynamic> properties;

  /// Component data that will be on the screen.
  final Map<String, dynamic> data;

  /// A action that the component can have.
  final ActionResponse action;

  /// Component children.
  List<ComponentResponse> children;

  /// Provide a [ComponentResponse] instance.
  ComponentResponse(
    this.name,
    this.properties,
    this.data,
    this.action,
    this.children,
  );

  /// Provide a [ComponentResponse] instance from a [json].
  factory ComponentResponse.fromJson(Map<String, dynamic> json) {
    return ComponentResponse(
      json['name'] as String,
      json['properties'] as Map<String, dynamic>,
      json['data'] as Map<String, dynamic>,
      json['action'] == null
          ? null
          : ActionResponse.fromJson(json['action'] as Map<String, dynamic>),
      (json['children'] as List)
          ?.map((e) => e == null
              ? null
              : ComponentResponse.fromJson(e as Map<String, dynamic>))
          ?.toList(),
    );
  }
}
