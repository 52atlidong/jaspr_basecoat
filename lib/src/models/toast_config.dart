import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'toast_config.freezed.dart';

@freezed
sealed class ToastConfig with _$ToastConfig {
  factory ToastConfig({
    Duration? duration,
    @Default(ToastCategory.success) ToastCategory category,
    required String title,
    String? description,
    ToastAction? action,
    ToastAction? cancel,
  }) = _ToastConfig;
}

@freezed
sealed class ToastAction with _$ToastAction {
  factory ToastAction({String? label, VoidCallback? onclick}) = _ToastAction;
}

enum ToastCategory { success, info, warning, error }
