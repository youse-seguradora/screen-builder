/// Event/Action/Click json model representation.
///
/// [ActionResponse] is used to parse the json and handle the properties
/// about a Event/Action/Click that are used to handle a user interaction.
class ActionResponse {
  /// Event/Action/Click type.
  final String type;

  /// Event/Action/Click to be used in case of a success interaction.
  final ActionResponse fallbackSuccess;

  /// Event/Action/Click to be used in case of a interaction with error.
  final ActionResponse fallbackFailure;

  /// Event/Action/Click properties and customizations.
  final Map<String, dynamic> properties;

  /// Provide a [ActionResponse] instance.
  ActionResponse(
    this.type,
    this.fallbackSuccess,
    this.fallbackFailure,
    this.properties,
  );

  /// Provide a [ActionResponse] instance from a [json].
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
