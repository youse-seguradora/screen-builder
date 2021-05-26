import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../manager/form_manager.dart';

/// Class to create and provide a [FormManager].
///
/// The class [FormProvider] is used to create a Provider that will
/// to hold a [FormManager] and make it available from the BuildContext.
class FormProvider<T extends FormManager> extends StatelessWidget {
  ///Context that there is a FormManager available.
  static BuildContext _formContext;

  ///[Function] to get a [FormManager] instance.
  final T Function() manager;

  /// Form child.
  final Widget child;

  /// Provide a [FormProvider] intance.
  const FormProvider({
    this.manager,
    this.child,
  });

  /// Method to retrieve a  [FormManager] instance that was
  /// created and provided in a context.
  ///
  /// throws a FlutterError when a [FormManager] instance
  /// is not founded on the provided context.
  ///
  /// return null if the [_formContext] is null,
  /// if [_formContext] is null it`s indicate
  /// that a [FormManager] widget was not created..
  static T of<T extends FormManager>({BuildContext context}) {
    try {
      if (_formContext != null) {
        return Provider.of<T>(context ?? _formContext, listen: false);
      }
      return null;
    } on ProviderNotFoundException catch (e) {
      if (e.valueType != T) {
        rethrow;
      }
      throw FlutterError(
        '''
        FormProvider.of() called with a context that does not contain a FormManager of type $T.
       
        The context used was: $_formContext
        ''',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Provider<T>(
      create: (_) => manager(),
      builder: (context, _) {
        _formContext = context;
        return child;
      },
    );
  }
}
