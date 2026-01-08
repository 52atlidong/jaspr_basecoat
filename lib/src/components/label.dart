import 'base.dart';

/// label
class ShadLabel extends ShadBaseComponent {
  const ShadLabel(
    super.children, {
    this.htmlFor,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  final String? htmlFor;

  @override
  String get innerClasses => 'label';

  @override
  String get tag => 'label';

  @override
  Map<String, String>? get innerAttributes => {'for': ?htmlFor};
}
