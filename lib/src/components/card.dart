import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'base.dart';

class ShadCard extends ShadBaseComponent {
  const ShadCard(
    super.children, {
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  @override
  String get tag => 'div';

  @override
  String get innerClasses => 'card';
}

class ShadCardHeader extends ShadBaseComponent {
  const ShadCardHeader(
    super.children, {
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  @override
  String get innerClasses => 'flex flex-col';

  @override
  String get tag => 'header';
}

class ShadCardTitle extends ShadBaseComponent {
  const ShadCardTitle(
    super.children, {
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  @override
  String get tag => 'h2';
}

class ShadCardDescription extends ShadBaseComponent {
  const ShadCardDescription(
    super.children, {
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  @override
  String get tag => 'p';
}

class ShadCardContent extends ShadBaseComponent {
  const ShadCardContent(
    super.children, {
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
  });

  @override
  Component build(BuildContext context) {
    return section(classes: classes, children);
  }

  @override
  String get tag => 'section';
}
