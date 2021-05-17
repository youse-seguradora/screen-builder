import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:screen_builder/screen_builder.dart';

class ScreenRemoteService {
  final Dio dio = Dio();

  Future<Presentation> getFeature({@required String feature}) async {
    final Response response = await dio.get(feature);

    if (response.statusCode == HttpStatus.ok) {
      final PresentationResponse presentationResponse =
          PresentationResponse.fromJson(response.data);
      return PresentationResponseMapper().map(presentationResponse);
    }

    throw Exception("Network error");
  }
}
