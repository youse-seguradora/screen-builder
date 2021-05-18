/// User action/event/click model representation
class UserAction {
  /// Action type, used to identify a action
  final String type;

  /// Action to be used in a success interaction
  final UserAction fallbackSuccess;

  /// Action to be used in a failure interaction
  final UserAction fallbackFailure;

  /// Action properties and customizations
  final Map<String, dynamic> properties;

  /// Provide a [UserAction] instance.
  UserAction(
    this.type,
    this.fallbackSuccess,
    this.fallbackFailure,
    this.properties,
  );
}
