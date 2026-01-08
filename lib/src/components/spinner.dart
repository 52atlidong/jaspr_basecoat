import 'package:jaspr/dom.dart';

import 'base.dart';

/// Spinner
/// 
/// [size] 为空 自动
class ShadSpinner extends ShadBaseComponent {
  const ShadSpinner({
    int? size,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  }) : size = size != null ? 'size-$size' :null,super(const [path(d: 'M21 12a9 9 0 1 1-6.219-8.56', [])]);

  final String? size;

  @override
  String get tag => 'svg';

  @override
  String get innerClasses => '${size ?? ''} animate-spin';

  @override
  Map<String, String>? get innerAttributes => {
    'viewBox': '0 0 24 24',
    'xmlns': 'http://www.w3.org/2000/svg',
    'width': '24',
    'height': '24',
    'fill': 'none',
    'stroke': 'currentColor',
    'stroke-width': '2',
    'stroke-linecap': 'round',
    'stroke-linejoin': 'round',
    'role': 'status',
    'aria-label': 'Loading',
  };
}
