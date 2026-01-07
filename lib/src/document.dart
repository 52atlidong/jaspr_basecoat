import 'package:jaspr/dom.dart' show StyleRule, link, Style, script, div;
import 'package:jaspr/server.dart';

const _kBasecoatVersion = '0.3.10-beta.2';

const _shadDocumentKey = _ShadDocumentKey();

class _ShadDocumentKey extends GlobalKey {
  const _ShadDocumentKey() : super.constructor();
}

class ShadDocument extends StatelessComponent implements Document {
  const ShadDocument({
    this.title,
    this.lang,
    this.base = '/',
    this.charset = 'utf-8',
    this.viewport = 'width=device-width, initial-scale=1.0',
    this.meta = const {},
    this.styles = const [],
    this.head = const [],
    required this.body,
  }) : super(key: _shadDocumentKey);

  final String? title;
  final String? lang;
  final String? base;
  final String? charset;
  final String? viewport;
  final Map<String, String> meta;
  final List<StyleRule> styles;
  final List<Component> head;
  final Component body;

  String? get _normalizedBase {
    var base = this.base;
    if (base == null) return null;
    if (!base.startsWith('/')) base = '/$base';
    if (!base.endsWith('/')) base = '$base/';
    return base;
  }

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'html',
      attributes: {'lang': ?lang},
      children: [
        Component.element(
          tag: 'head',
          children: [
            if (base != null)
              Component.element(tag: 'base', attributes: {'href': _normalizedBase!}),
            if (charset != null) Component.element(tag: 'meta', attributes: {'charset': charset!}),
            HeadDocument(title: title, meta: {'viewport': ?viewport, ...meta}),
            if (styles.isNotEmpty) //
              Style(styles: styles),
            ...head,
            link(
              rel: 'stylesheet',
              href:
                  'https://cdn.jsdelivr.net/npm/basecoat-css@$_kBasecoatVersion/dist/basecoat.cdn.min.css',
            ),
            script(
              src:
                  'https://cdn.jsdelivr.net/npm/basecoat-css@$_kBasecoatVersion/dist/js/all.min.js',
              async: true,
            ),
          ],
        ),
        Component.element(
          tag: 'body',
          children: [
            body,
            div(id: 'toaster', classes: 'toaster', []),
          ],
        ),
      ],
    );
  }
}
