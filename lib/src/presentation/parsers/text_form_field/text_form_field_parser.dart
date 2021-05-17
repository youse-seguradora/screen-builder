import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import '../form/elements/wrap_form_property.dart';
import 'text_form_field_data.dart';
import 'text_form_field_properties.dart';
import 'utils/text_form_field_validator_factory.dart';
import 'widget/screen_builder_text_form_field.dart';

class TextFormFieldParser implements Parser<WrapFormProperty<String>> {
  @override
  WrapFormProperty<String> parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = TextFormFieldData.fromJson(component.data);
    final properties = TextFormFieldProperties.fromJson(component.properties);

    final validators =
        TextFormFieldValidatorFactory.build(properties.validators);

    final controller = TextEditingController(text: data.value);
    return WrapFormProperty(
      formKey: properties.key,
      value: () => controller.text,
      dispose: controller.dispose,
      child: Builder(
        builder: (context) {
          return ScreenBuilderTextFormField(
            controller: controller,
            labelText: data.labelText,
            helperText: data.helperText,
            suffixIcon: data.iconData,
            styleType: properties.styleType,
            maxLength: properties.maxLength,
            type: properties.type,
            keyboardType: properties.keyboardType,
            formatter: properties.mask != null
                ? [TextInputMask(mask: properties.mask)]
                : null,
            validator: validators,
            onSuffixIconTap: () =>
                listener?.onClicked(component.action, context),
          );
        },
      ),
    );
  }
}
