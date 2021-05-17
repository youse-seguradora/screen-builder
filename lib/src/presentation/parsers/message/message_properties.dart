import 'package:cargo/cargo.dart';
import 'package:core/core.dart';

class MessageProperties {
  final YouseMessageType type;

  const MessageProperties({this.type});

  factory MessageProperties.fromJson(Map<String, dynamic> json) {
    return MessageProperties(
      type: enumFromString(YouseMessageType.values, json['type']),
    );
  }
}
