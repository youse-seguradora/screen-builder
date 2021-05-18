import 'package:flutter/material.dart';

/// Base screen for wrap the screen/components parser.
///
/// {@tool snippet}
///
/// This example shows how to create a base screen that wrap a parsed screen
///
/// ```dart
/// class DefaultScreen implements BaseScreen {
///   @override
///   Widget build(BuildContext context, Widget appBar, List<Widget> content) {
///     return Scaffold(
///       appBar: PreferredSize(
///               preferredSize: const Size.fromHeight(kToolbarHeight),
///               child: appBar,
///             ),
///       body: Column(
///         children: content,
///       )
///     );
///   }
/// }
/// ```
/// {@end-tool}
abstract class BaseScreen {
  /// Method called to build the screen
  Widget build(BuildContext context, Widget appBar, List<Widget> content);
}

/// A Default [BaseScreen] implementation.
///
/// It wrap a screen with a scaffold to add a app bar and body.
///
/// The [content] or body is wrapped with a scroll view, constrained box,
/// intrinsic height and safe area to has a scroll and control its boundaries.
class DefaultScreen implements BaseScreen {
  @override
  Widget build(BuildContext context, Widget appBar, List<Widget> content) {
    return Scaffold(
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: appBar,
            )
          : null,
      body: WillPopScope(
        onWillPop: () => null,
        child: LayoutBuilder(builder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: content,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
