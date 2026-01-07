import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:universal_web/js_interop.dart';
import 'package:universal_web/web.dart';
import '../models/toast_config.dart';

const _kActionEvent = 'jaspr_basecoat:toast:action';
const _kCancelEvent = 'jaspr_basecoat:toast:cancel';

const _kActionEventJsScript =
    '''
document.dispatchEvent(new Event('$_kActionEvent'));
close();
''';

const _kCancelEventJsScript =
    '''
document.dispatchEvent(new Event('$_kCancelEvent'));
close();
''';

@client
class ShadToaster extends StatelessComponent {
  const ShadToaster();

  @override
  Component build(BuildContext context) {
    return div(id: 'toaster', classes: 'toaster', []);
  }

  /// show Toast only client
  static void toast(ToastConfig config) async {
    if (!kIsWeb) return;
    final event = CustomEvent(
      'basecoat:toast',
      CustomEventInit(
        detail: {
          'config': {
            if (config.duration != null) 'duration': config.duration!.inMilliseconds,
            'category': config.category,
            'title': config.title,
            if (config.description != null) 'description': config.description!,
            if (config.action != null)
              'action': {
                if (config.action!.label != null) 'label': config.action!.label,
                if (config.action!.onclick != null) 'onclick': _kActionEventJsScript,
              },
            if (config.cancel != null)
              'cancel': {
                if (config.cancel!.label != null) 'label': config.cancel!.label,
                if (config.cancel!.onclick != null) 'onclick': _kCancelEventJsScript,
              },
          },
        }.jsify(),
      ),
    );

    if (config.action?.onclick != null) {
      void onAction(Event e) {
        config.action?.onclick?.call();
      }

      final jsHandler = onAction.toJS;
      document.addEventListener(_kActionEvent, jsHandler);
      Future.delayed(config.duration ?? Duration(milliseconds: 5000), () {
        document.removeEventListener(_kActionEvent, jsHandler);
      });
    }

    if (config.cancel?.onclick != null) {
      void onCancel(Event e) {
        config.cancel?.onclick?.call();
      }

      final jsHandler = onCancel.toJS;
      document.addEventListener(_kCancelEvent, jsHandler);
      Future.delayed(config.duration ?? Duration(milliseconds: 5000), () {
        document.removeEventListener(_kCancelEvent, jsHandler);
      });
    }

    document.dispatchEvent(event);
  }
}
