class ActionResponse {
  final String type;
  final ActionResponse fallbackSuccess;
  final ActionResponse fallbackFailure;
  final Map<String, dynamic> properties;

  ActionResponse(
      this.type, this.fallbackSuccess, this.fallbackFailure, this.properties);

  factory ActionResponse.fromJson(Map<String, dynamic> json) {
    return ActionResponse(
      json['type'] as String,
      json['fallback_success'] != null
          ? ActionResponse.fromJson(json['fallback_success'])
          : null,
      json['fallback_failure'] != null
          ? ActionResponse.fromJson(json['fallback_failure'])
          : null,
      json['properties'] as Map<String, dynamic>,
    );
  }
}
