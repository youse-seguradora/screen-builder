import 'component_response.dart';

class ScreenResponse {
  final String name;
  final ComponentResponse appBar;
  final List<ComponentResponse> content;

  ScreenResponse(this.name, this.appBar, this.content);

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
