extension ListExtension on List {
  dynamic get firstSafety {
    return this.firstWhere((element) => true, orElse: () => null);
  }
}
