import '../elements/form_property.dart';

/// Base class for hold and manage all Component that is part of a Form.
///
/// The class [FormManager] is used to hold and maintain all FormProperty
/// that are being used in a Form
///
/// {@tool snippet}
///
/// This example shows how to create a class that use a [FormManager].
///
/// ```dart
/// class DefaultFormManager implements FormManager {}
/// ```
/// {@end-tool}
abstract class FormManager {
  /// Method used to retrieve all [FormProperty] key and value.
  Map<String, dynamic> getMapProperties();

  /// Method used to update a [FormProperty].
  void updateProperties(FormProperty property);

  /// Method used to validate a Form.
  bool validate();
}
