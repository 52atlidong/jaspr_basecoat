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
  const ShadBaseComponent(
    this.children, {
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
    super.key,
  });

  final String? id;

  final String? classes;

  final Map<String, String>? attributes;

  final Map<String, EventCallback>? events;

  final Styles? styles;

  final List<Component> children;

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: tag,
      id: id,
      classes: '$innerClasses ${classes ?? ''}',
      styles: styles,
      attributes: {...?attributes, ...?innerAttributes},
      events: {...?events, ...?innerEvents},
      children: children,
    );
  }

  /// 标签
  String get tag;

  Map<String, EventCallback>? get innerEvents => null;

  Map<String, String>? get innerAttributes => null;

  String get innerClasses => '';

  String? explicitBool(bool? val) => switch(val) {
    true => kIsWeb ? 'true': '',
    false => kIsWeb ? 'false': null,
    null => null,
  };

}
