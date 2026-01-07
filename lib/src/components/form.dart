import 'base.dart';

/// @docImport 'package:jaspr/dom.dart';

/// 表单
///
/// 子元素(label input textarea select)自动应用Shadcn样式
class ShadForm extends ShadBaseComponent {
  const ShadForm(super.children, {super.classes, super.id, super.key});

  @override
  String get tag => 'form';

  @override
  String get shadClasses => 'form';

}
