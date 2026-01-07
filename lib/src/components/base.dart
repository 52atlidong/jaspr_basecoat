import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

final shadEvents = events;

abstract class ShadBaseComponent extends StatelessComponent {
  const ShadBaseComponent(this.children, {this.id, super.key, this.classes});

  final String? classes;

  final String? id;

  final List<Component> children;

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: tag,
      id: id,
      classes: '$shadClasses ${classes ?? ''}',
      children: children,
      attributes: attributes,
      key: key,
      events: events,
    );
  }

  String get tag;

  Map<String, EventCallback>? get events => null;

  Map<String, String>? get attributes => null;

  String get shadClasses => '';
}
