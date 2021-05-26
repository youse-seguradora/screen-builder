/// [List] additional custom functions.
extension ListExtension on List {
  /// Get the first element from the list and if it is empty instead
  /// of throw a exception will to return null.
  dynamic get firstSafety {
    return firstWhere((element) => true, orElse: () => null);
  }
}
