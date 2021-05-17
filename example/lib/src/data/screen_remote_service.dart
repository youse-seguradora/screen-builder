import 'dart:io';

import 'package:dio/dio.dart';
import 'package:screen_builder/screen_builder.dart';

class ScreenRemoteService {
  static const String _endpoint = "https://demo8105806.mockable.io/feature/";
  final Dio dio = Dio();

  Future<Presentation> getFeature() async {
    final Response response = await dio.get(_endpoint);

    if (response.statusCode == HttpStatus.ok) {
      final PresentationResponse presentationResponse =
          PresentationResponse.fromJson(response.data);
      return PresentationResponseMapper().map(presentationResponse);
    }

    throw Exception("Network error");
  }
}
