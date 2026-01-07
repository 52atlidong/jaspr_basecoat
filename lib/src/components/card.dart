import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'base.dart';

class ShadCard extends ShadBaseComponent {
  const ShadCard(super.children, {super.classes, super.id, super.key});

  @override
  String get tag => 'div';

  @override
  String get shadClasses => 'card';
}

class ShadCardHeader extends ShadBaseComponent {
  const ShadCardHeader(super.children, {super.classes, super.id, super.key});

  @override
  String get shadClasses => 'flex flex-col';

  @override
  String get tag => 'header';
}

class ShadCardTitle extends ShadBaseComponent {
  const ShadCardTitle(super.children, {super.classes, super.id, super.key});

  @override
  String get tag => 'h2';
}

class ShadCardDescription extends ShadBaseComponent {
  const ShadCardDescription(super.children, {super.classes, super.id, super.key});

  @override
  String get tag => 'p';
}

class ShadCardContent extends ShadBaseComponent {
  const ShadCardContent(super.children, {super.classes, super.id, super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: classes, children);
  }

  @override
  String get tag => 'section';
}
