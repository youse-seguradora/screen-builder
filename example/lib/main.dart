import 'package:flutter/material.dart';
import 'package:screen_builder/screen_builder.dart' as builder;

import 'src/data/screen_remote_service.dart';
import 'src/domain/listeners/listeners.dart';
import 'src/domain/parsers/parsers.dart';

void main() {
  runApp(MyApp());
}

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScreenBuilderExample",
      theme: ThemeData.light(),
      home: const ScreenBuilderExample(),
    );
  }
}

// ignore: public_member_api_docs
class ScreenBuilderExample extends StatelessWidget {
  // ignore: public_member_api_docs
  const ScreenBuilderExample();

  @override
  Widget build(BuildContext context) {
    final builder.ScreenBuilder screenBuilder =
        builder.ScreenBuilder.getInstance(
      parsers: {
        'app_bar': AppBarParser(),
        'button': ButtonParser(),
        'text': TextParser(),
      },
      listeners: {
        'print': PrintClickListener(),
      },
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
          return screenBuilder.build(screen: snapshot.data, context: context);
        }

        return Scaffold(
          appBar: AppBar(title: const Text("Teste")),
          body: const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Future<builder.Screen> _getFeature() async {
    final ScreenRemoteService service = ScreenRemoteService();
    final builder.Presentation presentation = await service.getFeature(
        feature: 'https://demo5075457.mockable.io/screen-builder/exemple');
    return presentation.screen;
  }
}
