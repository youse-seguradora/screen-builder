import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart' as builder;

import 'src/data/screen_remote_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      theme: ThemeDefault(),
      child: Builder(builder: (context) {
        final YouseTheme theme = YouseTheme.of(context);
        return MaterialApp(
          title: "ScreenBuilderExample",
          theme: getThemeData(theme),
          home: const ScreenBuilderExample(),
        );
      }),
    );
  }
}

class ScreenBuilderExample extends StatelessWidget {
  const ScreenBuilderExample();

  @override
  Widget build(BuildContext context) {
    final builder.ScreenBuilder screenBuilder =
        builder.ScreenBuilder.getInstance(
      parsers: builder.parsers,
      listeners: builder.listeners,
    );

    return FutureBuilder(
      future: _getFeature(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: const Text("Teste")),
            body: Center(child: Text(snapshot.error.toString())),
          );
        }

        if (snapshot.hasData) {
          return screenBuilder.build(
            screen: snapshot.data,
            context: context
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text("Teste")),
          body: const Center(child: const CircularProgressIndicator()),
        );
      },
    );
  }

  Future<builder.Screen> _getFeature() async {
    final ScreenRemoteService service = ScreenRemoteService();
    final builder.Presentation presentation = await service.getFeature();
    return presentation.screen;
  }
}
