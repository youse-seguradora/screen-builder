class UserAction {
  final String type;
  final UserAction fallbackSuccess;
  final UserAction fallbackFailure;
  final Map<String, dynamic> properties;

  UserAction(
    this.type,
    this.fallbackSuccess,
    this.fallbackFailure,
    this.properties,
  );
}
