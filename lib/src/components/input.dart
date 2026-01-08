import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart';
import 'base.dart';

class ShadInput extends ShadBaseComponent {
  const ShadInput({
    this.type,
    this.name,
    this.value,
    this.disabled = false,
    this.invalid = false,
    this.onInput,
    this.onChange,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  }) : super(const []);

  final InputType? type;

  final String? name;

  final String? value;

  final bool disabled;

  final bool invalid;

  final ValueChanged<String>? onInput;

  final ValueChanged<String>? onChange;

  @override
  String get tag => 'input';

  @override
  Map<String, String>? get innerAttributes => {
    'type': ?type?.value,
    'name': ?name,
    'value': ?value,
    if (disabled) 'disabled': '',
    'aria-invalid': ?explicitBool(invalid),
  };

  @override
  Map<String, EventCallback>? get innerEvents => {
    ...shadEvents(onInput: onInput, onChange: onChange),
  };

  @override
  String get innerClasses => 'input';

  @override
  Component build(BuildContext context) {
    
    if(kIsWeb && id != null) {
      final element = document.getElementById(id!);
      final value = element?.nodeValue ?? '';
      if(value.isNotEmpty) {
        onChange?.call(value);
      }
    }

    return super.build(context);
  }

}
