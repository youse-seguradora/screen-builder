import 'package:cargo/cargo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenBuilderTextFormField extends YouseTextFormField {
  ScreenBuilderTextFormField(
      {Key key,
      TextEditingController controller,
      TextInputType keyboardType,
      int maxLength,
      String labelText,
      String helperText,
      List<TextInputFormatter> formatter,
      IconData suffixIcon,
      VoidCallback onSuffixIconTap,
      YouseTextFormFieldType type = YouseTextFormFieldType.standard,
      YouseTextFormFieldStyleType styleType =
          YouseTextFormFieldStyleType.standard,
      TextFormFieldValidator validator})
      : _textFormFieldValidator = validator,
        super(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          maxLength: maxLength,
          labelText: labelText,
          helperText: helperText,
          formatter: formatter,
          suffixIcon: suffixIcon,
          onSuffixIconTap: onSuffixIconTap,
          type: type,
          styleType: styleType,
        );

  final TextFormFieldValidator _textFormFieldValidator;

  @override
  TextFormFieldValidator get formValidator => _textFormFieldValidator;
}
