import 'component.dart';

class Screen {
  final String name;
  final Component appBar;
  final List<Component> content;

  Screen(this.name, this.appBar, this.content);
}