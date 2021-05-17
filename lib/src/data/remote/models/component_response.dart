import 'action_response.dart';

class ComponentResponse {
  final String name;
  final Map<String, dynamic> properties;
  final Map<String, dynamic> data;
  final ActionResponse action;
  List<ComponentResponse> children;

  ComponentResponse(
    this.name,
    this.properties,
    this.data,
    this.action,
    this.children,
  );

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
