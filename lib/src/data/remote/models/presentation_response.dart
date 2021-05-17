import 'screen_response.dart';

class PresentationResponse {
  final String version;
  final String module;
  final String theme;
  final ScreenResponse screen;

  PresentationResponse(this.version, this.module, this.theme, this.screen);

  factory PresentationResponse.fromJson(Map<String, dynamic> json) {
    return PresentationResponse(
      json['version'] as String,
      json['module'] as String,
      json['theme'] as String,
      json['screen'] == null
          ? null
          : ScreenResponse.fromJson(json['screen'] as Map<String, dynamic>),
    );
  }
}
