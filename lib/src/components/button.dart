import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'base.dart';

/// shadcn 按钮组件
///
/// [onPressed] 点击 为空时自动disabled
class ShadButton extends ShadBaseComponent {
  const ShadButton(
    super.children, {
    required this.onPressed,
    this.type = .button,
    this.variant = .primary,
    this.size = .md,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  }) : _isIcon = false;

  const ShadButton.icon(
    super.children, {
    required this.onPressed,
    this.type = .button,
    this.variant = .ghost,
    this.size = .md,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  }) : _isIcon = true;

  final VoidCallback? onPressed;

  final ButtonType? type;

  final ButtonVariant variant;

  final ButtonSize size;

  final bool _isIcon;

  @override
  String get tag => 'button';

  @override
  Map<String, String>? get innerAttributes => {
    if (onPressed == null) 'disabled': '',
    'type': ?type?.value,
  };

  @override
  Map<String, EventCallback>? get innerEvents => {...shadEvents<void>(onClick: onPressed)};

  @override
  String get innerClasses => 'btn$size${_isIcon ? '-icon' : ''}$variant';
}

/// 按钮大小
///
/// [value] class
enum ButtonSize {
  /// small
  sm('-sm'),

  /// large
  lg('-lg'),

  /// medium
  md('');

  final String value;

  const ButtonSize(this.value);

  @override
  String toString() {
    return value;
  }
}

/// 按钮样式变种
///
/// [value] class
enum ButtonVariant {
  primary('-primary'),
  secondary('-secondary'),
  destructive('-destructive'),
  outline('-outline'),
  ghost('-ghost'),
  link('-link');

  final String value;

  const ButtonVariant(this.value);

  @override
  String toString() => value;
}
