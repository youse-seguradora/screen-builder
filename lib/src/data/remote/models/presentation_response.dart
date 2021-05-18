import 'screen_response.dart';

/// Screen builder base json representation.
class PresentationResponse {
  /// Screen builder json version
  final String version;

  /// Module of this json
  final String module;

  /// Theme to be used on screen.
  final String theme;

  /// Screen to be displayed.
  final ScreenResponse screen;

  /// Provide a [PresentationResponse] instance.
  PresentationResponse(this.version, this.module, this.theme, this.screen);

  /// Provide a [PresentationResponse] instance from a [json].
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
