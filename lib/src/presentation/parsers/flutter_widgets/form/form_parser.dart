import 'package:flutter/widgets.dart';

import '../../../../../screen_builder.dart';
import 'manager/default_form_manager.dart';
import 'manager/form_manager.dart';
import 'provider/form_provider.dart';

/// Parser responsible for interpret a JSON and return a Form Widget.
class FormParser implements Parser<Form> {
  @override
  Form parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: FormProvider<FormManager>(
        manager: () => DefaultFormManager(formKey: _formKey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
