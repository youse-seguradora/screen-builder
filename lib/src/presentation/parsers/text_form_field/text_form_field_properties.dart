import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TextFormFieldProperties {
  final TextInputType keyboardType;
  final int maxLength;
  final String key;
  final YouseTextFormFieldType type;
  final YouseTextFormFieldStyleType styleType;
  final String mask;
  final List<ValidationType> validators;

  const TextFormFieldProperties(
      {this.key,
      this.keyboardType,
      this.maxLength,
      this.type,
      this.styleType,
      this.mask,
      this.validators});

  factory TextFormFieldProperties.fromJson(Map<String, dynamic> json) =>
      TextFormFieldProperties(
          key: json['key'],
          mask: json['mask'],
          maxLength: json['max_length'],
          type: enumFromString(YouseTextFormFieldType.values, json['type']),
          styleType: enumFromString(
              YouseTextFormFieldStyleType.values, json['style_type']),
          validators: (json['validators'] as List)
              ?.map((type) => enumFromString(ValidationType.values, type))
              ?.toList(),
          keyboardType: TextInputType.values.firstWhere(
            (type) => (type.toJson()['name'] as String)
                ?.contains(json['keyboard_type'] ?? ''),
            orElse: () => TextInputType.text,
          ));
}
