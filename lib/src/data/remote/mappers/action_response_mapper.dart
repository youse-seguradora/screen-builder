import '../../../domain/models/action.dart';
import '../../../utils/mapper.dart';
import '../models/action_response.dart';

/// [ActionResponse] data layer model mapper to [UserAction] domain layer model.
class ActionResponseMapper implements Mapper<ActionResponse, UserAction> {
  @override
  UserAction map(ActionResponse type) => type != null
      ? UserAction(
          type.type,
          map(type.fallbackSuccess),
          map(type.fallbackFailure),
          type.properties,
        )
      : null;
}
