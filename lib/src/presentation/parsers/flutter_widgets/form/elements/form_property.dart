/// Base class for parsing a Component that is part of a Form.
///
/// The class [FormProperty] is used to retrieve
/// it`s component property and value.
///
/// {@tool snippet}
///
/// This example shows how to create a class that use a [FormProperty] to hold
/// a String property.
///
/// ```dart
/// class YouseTextField implements FormProperty<String> {}
/// ```
/// {@end-tool}
abstract class FormProperty<V> {
  /// Get the Component key and value.
  MapEntry<String, V> getProperty();

  /// Get the Component key.
  String getKey();
}
