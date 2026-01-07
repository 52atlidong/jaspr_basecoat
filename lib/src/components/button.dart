import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'base.dart';

/// shadcn button
class ShadButton extends ShadBaseComponent {
  const ShadButton(
    super.children, {
    required this.onPressed,
    this.type = .button,
    this.variant = .primary,
    this.size = .md,
    super.classes,
    super.id,
    super.key,
  }) : _isIcon = false;

  const ShadButton.icon(
    super.children, {
    required this.onPressed,
    this.type = .button,
    this.variant = .ghost,
    this.size = .md,
    super.classes,
    super.id,
    super.key,
  }) : _isIcon = true;

  final VoidCallback? onPressed;

  final ButtonType? type;

  final ButtonVariant variant;

  final ButtonSize size;

  final bool _isIcon;

  @override
  String get tag => 'button';

  @override
  Map<String, String>? get attributes => {
    if (onPressed == null) 'disabled': '',
    'type': ?type?.value,
  };

  @override
  Map<String, EventCallback>? get events => {...shadEvents<void>(onClick: onPressed)};

  @override
  String get shadClasses => 'btn$size${_isIcon ? '-icon' : ''}$variant';
}

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
