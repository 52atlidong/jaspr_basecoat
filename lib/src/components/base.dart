import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

final shadEvents = events;

/// Shadcn stateless组件基类
/// 
/// [tag] 必须
/// 重写[shadClasses]和外部的[classes]组合成最终的html class
/// 重写[events]来添加等事件处理 如 onclick 等
/// 重写[attributes] 来添加其他属性 如 type disabled 等
/// [shadClasses] basecoat相关class
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

  /// 标签 
  String get tag;

  Map<String, EventCallback>? get events => null;

  Map<String, String>? get attributes => null;

  String get shadClasses => '';
}
