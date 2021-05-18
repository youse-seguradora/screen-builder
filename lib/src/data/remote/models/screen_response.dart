import 'component_response.dart';

/// Screen json model representation.
class ScreenResponse {
  /// Screen name
  final String name;

  /// Component to be used as app bar
  final ComponentResponse appBar;

  /// List of components that will be rendered with this screen
  final List<ComponentResponse> content;

  /// Provide [ScreenResponse] instance
  ScreenResponse(this.name, this.appBar, this.content);

  /// Provide [ScreenResponse] instance from a [json]
  factory ScreenResponse.fromJson(Map<String, dynamic> json) {
    return ScreenResponse(
      json['name'] as String,
      json['app_bar'] == null
          ? null
          : ComponentResponse.fromJson(json['app_bar'] as Map<String, dynamic>),
      (json['content'] as List)
          ?.map((e) => e == null
              ? null
              : ComponentResponse.fromJson(e as Map<String, dynamic>))
          ?.toList(),
    );
  }
}
