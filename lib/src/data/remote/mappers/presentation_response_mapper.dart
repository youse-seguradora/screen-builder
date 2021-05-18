import '../../../domain/models/presentation.dart';
import '../../../utils/mapper.dart';
import '../models/presentation_response.dart';
import 'screen_response_mapper.dart';

/// [PresentationResponse] data layer model mapper
/// to [Presentation] domain layer model.
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
