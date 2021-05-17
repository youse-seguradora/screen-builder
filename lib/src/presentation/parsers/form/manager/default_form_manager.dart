import 'package:flutter/material.dart';

import '../../../../../screen_builder.dart';
import '../elements/form_property.dart';

class DefaultFormManager implements FormManager {
  ///GlobalKey used to validate the Form.
  final GlobalKey<FormState> _formKey;

  ///[List] of [FormProperty] that are currently being used.
  final Map<String, FormProperty> _properties = {};

  /// Provide [DefaultFormManager] instance.
  ///
  /// You must provide a [formKey] it is used to validate the Form.
  ///
  /// {@tool snippet}
  ///
  /// An example of how to get an instance of DefaultFormManager:
  /// ```dart
  /// final DefaultManager manager =
  ///             DefaultFormManager(formKey: GlobalKey<FormState>())
  /// ```
  /// {@end-tool}
  DefaultFormManager({
    @required GlobalKey<FormState> formKey,
  })  : assert(formKey != null),
        _formKey = formKey;

  @override
  void updateProperties(FormProperty property) {
    _properties.remove(property.getKey());
    _properties.putIfAbsent(property.getKey(), () => property);
  }

  @override
  Map<String, dynamic> getMapProperties() {
    return _properties.map((key, value) => value.getProperty());
  }

  @override
  bool validate() {
    return _formKey.currentState.validate();
  }
}
