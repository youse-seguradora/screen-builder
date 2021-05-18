import '../../../domain/models/screen.dart';
import '../../../utils/mapper.dart';
import '../models/screen_response.dart';
import 'component_response_mapper.dart';

class ScreenResponseMapper implements Mapper<ScreenResponse, Screen> {
  @override
  Screen map(ScreenResponse type) => Screen(
      type.name,
      type.appBar != null ? ComponentResponseMapper().map(type.appBar) : null,
      type.content
          .map((component) => ComponentResponseMapper().map(component))
          .toList());
}
