import 'click_listener.dart';
import 'default_click_listener.dart';

// TODO: Add each click listener implementation
final Map<String, ClickListener> listeners = {
  "tap": DefaultClickListener(),
  "route": DefaultClickListener(),
};
