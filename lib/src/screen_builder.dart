library screen_builder;

import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';

import 'domain/exceptions/parser_exception.dart';
import 'domain/listeners/click_listener.dart';
import 'domain/models/component.dart';
import 'domain/models/screen.dart';
import 'domain/parsers/parser.dart';
import 'presentation/base_screen.dart';

/// Builds the screen based on the predetermined model.
///
/// This class orchestrates the construction of a screen based on
/// pre-established models.
class ScreenBuilder {
  static ScreenBuilder _instance;
  static BuildContext currentContext;
  static Map<String, Parser> listParser;
  static Map<String, ClickListener> listEventListeners;

  /// A template screen where the widgets that have been parsed are embedded.
  final BaseScreen baseScreen;

  ScreenBuilder._(this.baseScreen);

  /// Provide [ScreenBuilder] instance.
  ///
  /// You must provide a [parsers] it is used to find the component parser and
  /// optionally a [baseScreen] which is used as a template to incorporate the
  /// parsed components.
  ///
  /// {@tool snippet}
  ///
  /// An example of how to get an instance of ScreenBuilder:
  /// ```dart
  /// Map<String, Parser> parsers = {"MyComponentName": MyComponentParser};
  /// ScreenBuilder screenBuilder = ScreenBuilder.getInstance(
  ///   parsers: parsers,
  ///   baseScreen: MyTemplateScreen(),
  /// );
  /// ```
  /// {@end-tool}
  factory ScreenBuilder.getInstance({
    Map<String, Parser> parsers,
    Map<String, ClickListener> listeners,
    BaseScreen baseScreen,
  }) {
    if (parsers != null) {
      listParser = parsers;
    }

    if (listeners != null) {
      listEventListeners = listeners;
    }

    return _instance ??= ScreenBuilder._(baseScreen);
  }

  Widget build({
    @required Screen screen,
    @required BuildContext context,
  }) =>
      buildWithBaseScreen(
        baseScreen: baseScreen ?? DefaultScreen(),
        screen: screen,
        context: context,
      );

  Widget buildWithBaseScreen({
    @required BaseScreen baseScreen,
    @required Screen screen,
    @required BuildContext context,
  }) {
    currentContext = context;
    final Widget appBar = _parseComponent(screen.appBar, context);
    final List<Widget> content = screen.content.map((component) {
      return _parseComponent(component, context);
    }).toList();

    return baseScreen.build(context, appBar, content);
  }

  void navigateToScreen({
    @required Screen screen,
    @required BuildContext context,
  }) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => build(screen: screen, context: context),
      ),
    );
  }

  Widget _parseComponent(
    Component component,
    BuildContext context,
  ) {
    final Container errorWidget = Container(
      color: YouseTheme.of(context).error,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(Spacing.of_4),
      child: const Text("Invalid component"),
    );

    try {
      return Parser.parse(component);
    } on ParserException catch (e) {
      // TODO: add crash_reporter
      print('${e.message}: ${component.name})');
      return errorWidget;
    } on Exception catch (e) {
      // TODO: add crash_reporter
      print(e.toString());
      return errorWidget;
    }
  }
}
