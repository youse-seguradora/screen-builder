import 'package:flutter/widgets.dart';

import '../../../../screen_builder.dart';
import '../../../domain/parsers/parser.dart';
import 'manager/default_form_manager.dart';

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
