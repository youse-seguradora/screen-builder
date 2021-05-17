import 'package:core/core.dart';

import '../../../domain/models/presentation.dart';
import '../models/presentation_response.dart';
import 'screen_response_mapper.dart';

class PresentationResponseMapper
    implements Mapper<PresentationResponse, Presentation> {
  @override
  Presentation map(PresentationResponse type) => Presentation(
        type.version,
        type.module,
        type.theme,
        ScreenResponseMapper().map(type.screen),
      );
}
