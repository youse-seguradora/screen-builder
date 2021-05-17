import 'package:core/core.dart';

import '../../../domain/models/screen.dart';
import '../models/screen_response.dart';
import 'component_response_mapper.dart';

class ScreenResponseMapper implements Mapper<ScreenResponse, Screen> {
  @override
  Screen map(ScreenResponse type) => Screen(
      type.name,
      ComponentResponseMapper().map(type.appBar),
      type.content
          .map((component) => ComponentResponseMapper().map(component))
          .toList());
}
