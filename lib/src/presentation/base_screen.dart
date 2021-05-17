import 'package:flutter/material.dart';

abstract class BaseScreen {
  Widget build(BuildContext context, Widget appBar, List<Widget> content);
}

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
