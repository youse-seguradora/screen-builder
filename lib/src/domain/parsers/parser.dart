import 'package:flutter/widgets.dart';

import '../../../screen_builder.dart';
import '../exceptions/parser_exception.dart';
import '../listeners/click_listener.dart';
import '../models/component.dart';

/// Base class for parsing [Component] to create a widget.
///
/// The class [Parser] hooks Widget that is related to the component to be
/// parsed and returned.
///
/// {@tool snippet}
///
/// This example shows how to create a class that parses a [Component] to return
/// YouseTitle widget.
///
/// ```dart
/// class TitleParser implements Parser<YouseTitle> {}
/// ```
/// {@end-tool}
abstract class Parser<T extends Widget> {
  /// Find the parser corresponding to the [component] and call
  /// the [parseComponent()] method to return the widget.
  //TODO: Try to create a method without be static to be testable.
  static Widget parse(Component component, {BuildContext context}) {
    if (component != null) {
      final Parser parser = ScreenBuilder.listParser[component.name];
      final ClickListener listener =
          ScreenBuilder.listEventListeners[component?.action?.type];
      if (parser != null) {
        if (context == null) {
          return Builder(
            builder: (context) {
              return parser.parseComponent(component, listener, context);
            },
          );
        } else {
          return parser.parseComponent(component, listener, context);
        }
      }
    }

    throw const ParserException("Parser not found");
  }

  /// Required method to be implemented in every parser.
  ///
  /// The [parseComponent()] implementation must use the necessary
  /// methods of the [component] model to create and return a [T] type widget.
  T parseComponent(
    Component component,
    ClickListener listener,
    BuildContext context,
  );
}
