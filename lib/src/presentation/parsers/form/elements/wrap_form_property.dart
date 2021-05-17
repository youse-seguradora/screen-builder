import 'package:flutter/cupertino.dart';

import '../provider/form_provider.dart';
import 'form_property.dart';

/// Class to create any Widget with [FormProperty] implementation.
///
/// The class [WrapFormProperty] can be used to wrap a Widget
/// and provides it`s implementation of [FormProperty].
///
/// {@tool snippet}
///
/// This example shows how to create a Widget
/// that is wrapped by [WrapFormProperty].
///
/// ```dart
/// final controller = TextEditingController();
/// WrapFormProperty<String>(
///          key: properties.key,
///          value: () => controller.text,
///          child: YouseTextField(
///            controller: controller,
///            keyboardType: TextInputType.text,
///            errorText: "",
///          helperText: data.helperText,
///            labelText: data.labelText,
///            onChanged: (value) {},
///          ),
///        );
/// ```
/// {@end-tool}
class WrapFormProperty<V> extends StatefulWidget implements FormProperty<V> {
  final Widget child;
  final String formKey;
  final V Function() value;
  final VoidCallback dispose;

  /// Provide [WrapFormProperty] instance.
  ///
  /// You must provide:
  /// [formKey] to be the [FormProperty] key.
  /// [value] called to get the [FormProperty] value.
  /// [child] to be wrapped with the [FormProperty] implementation.
  /// [dispose] function to be called on widget dispose.
  const WrapFormProperty({
    @required this.formKey,
    @required this.value,
    @required this.child,
    this.dispose,
  })
      : assert(formKey != null),
        assert(child != null),
        assert(value != null);

  @override
  _WrapFormPropertyState<V> createState() => _WrapFormPropertyState<V>();

  @override
  String getKey() => formKey;

  @override
  MapEntry<String, V> getProperty() {
    return MapEntry(formKey, value.call());
  }
}

class _WrapFormPropertyState<V> extends State<WrapFormProperty<V>> {
  @override
  Widget build(BuildContext context) {
    FormProvider.of(context: context)?.updateProperties(widget);
    return widget.child;
  }

  @override
  void dispose() {
    widget.dispose?.call();
    super.dispose();
  }
}
