import 'package:jaspr/dom.dart';

import 'base.dart';

/// @docImport 'package:jaspr/dom.dart';

/// 表单
///
/// 子元素(label input textarea select)自动应用Shadcn样式
class ShadForm extends ShadBaseComponent {
  const ShadForm(
    super.children, {
    this.action,
    this.method,
    this.encType,
    this.autoComplete,
    this.name,
    this.noValidate = false,
    this.target,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  final String? action;

  final FormMethod? method;

  final FormEncType? encType;

  final AutoComplete? autoComplete;

  final String? name;

  final bool noValidate;

  final Target? target;

  @override
  String get tag => 'form';

  @override
  String get innerClasses => 'form';

  @override
  Map<String, String>? get innerAttributes => {
    'action': ?action,
    'method': ?method?.value,
    'enctype': ?encType?.value,
    'autocomplete': ?autoComplete?.value,
    'name': ?name,
    if (noValidate) 'novalidate': '',
    'target': ?target?.value,
  };
}
