import '../../../domain/models/component.dart';
import '../../../utils/mapper.dart';
import '../models/component_response.dart';
import 'action_response_mapper.dart';

class ComponentResponseMapper implements Mapper<ComponentResponse, Component> {
  @override
  Component map(ComponentResponse type) => Component(
        type.name,
        type.properties,
        type.data,
        type.action != null ? ActionResponseMapper().map(type.action) : null,
        type.children?.map(map)?.toList(),
      );
}
