import 'base.dart';

class ShadLabel extends ShadBaseComponent {
  const ShadLabel(super.children, {this.htmlFor, super.classes, super.id, super.key});

  final String? htmlFor;

  @override
  String get shadClasses => 'label';

  @override
  String get tag => 'label';

  @override
  Map<String, String>? get attributes => {'for': ?htmlFor};
}
