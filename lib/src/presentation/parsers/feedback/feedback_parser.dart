import 'package:cargo/cargo.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../../screen_builder.dart';
import 'feedback_data.dart';

class YouseFeedbackParser implements Parser<YouseFeedback> {
  @override
  YouseFeedback parseComponent(
      Component component, ClickListener listener, BuildContext context) {
    final data = FeedbackData.fromJson(component.data);
    final List<Widget> children =
        component.children?.map(Parser.parse)?.toList();

    return YouseFeedback(
      YouseFeedbackUiModel(
        title: data.title,
        description: data.description,
        titleButtonPrimary: data.titleButtonPrimary,
        titleButtonSecondary: data.titleButtonSecondary,
        imageWidget: children.firstSafety,
        onPressedButtonPrimary: () =>
            listener?.onClicked(component.action.fallbackSuccess, context),
        onPressedButtonSecondary: () =>
            listener?.onClicked(component.action.fallbackFailure, context),
      ),
    );
  }
}
