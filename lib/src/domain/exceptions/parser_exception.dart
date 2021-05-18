/// Screen builder parser exception.
///
/// Used when a parser has to throw a exception.
class ParserException implements Exception {
  /// [ParserException] message.
  final String message;

  /// Provide a [ParserException] instance.
  const ParserException([this.message = ""]);
}
