// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToastConfig {

 Duration? get duration; ToastCategory get category; String get title; String? get description; ToastAction? get action; ToastAction? get cancel;
/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastConfigCopyWith<ToastConfig> get copyWith => _$ToastConfigCopyWithImpl<ToastConfig>(this as ToastConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastConfig&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.action, action) || other.action == action)&&(identical(other.cancel, cancel) || other.cancel == cancel));
}


@override
int get hashCode => Object.hash(runtimeType,duration,category,title,description,action,cancel);

@override
String toString() {
  return 'ToastConfig(duration: $duration, category: $category, title: $title, description: $description, action: $action, cancel: $cancel)';
}


}

/// @nodoc
abstract mixin class $ToastConfigCopyWith<$Res>  {
  factory $ToastConfigCopyWith(ToastConfig value, $Res Function(ToastConfig) _then) = _$ToastConfigCopyWithImpl;
@useResult
$Res call({
 Duration? duration, ToastCategory category, String title, String? description, ToastAction? action, ToastAction? cancel
});


$ToastActionCopyWith<$Res>? get action;$ToastActionCopyWith<$Res>? get cancel;

}
/// @nodoc
class _$ToastConfigCopyWithImpl<$Res>
    implements $ToastConfigCopyWith<$Res> {
  _$ToastConfigCopyWithImpl(this._self, this._then);

  final ToastConfig _self;
  final $Res Function(ToastConfig) _then;

/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? duration = freezed,Object? category = null,Object? title = null,Object? description = freezed,Object? action = freezed,Object? cancel = freezed,}) {
  return _then(_self.copyWith(
duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ToastCategory,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ToastAction?,cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as ToastAction?,
  ));
}
/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToastActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $ToastActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToastActionCopyWith<$Res>? get cancel {
    if (_self.cancel == null) {
    return null;
  }

  return $ToastActionCopyWith<$Res>(_self.cancel!, (value) {
    return _then(_self.copyWith(cancel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ToastConfig].
extension ToastConfigPatterns on ToastConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToastConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToastConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToastConfig value)  $default,){
final _that = this;
switch (_that) {
case _ToastConfig():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToastConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ToastConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Duration? duration,  ToastCategory category,  String title,  String? description,  ToastAction? action,  ToastAction? cancel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToastConfig() when $default != null:
return $default(_that.duration,_that.category,_that.title,_that.description,_that.action,_that.cancel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Duration? duration,  ToastCategory category,  String title,  String? description,  ToastAction? action,  ToastAction? cancel)  $default,) {final _that = this;
switch (_that) {
case _ToastConfig():
return $default(_that.duration,_that.category,_that.title,_that.description,_that.action,_that.cancel);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Duration? duration,  ToastCategory category,  String title,  String? description,  ToastAction? action,  ToastAction? cancel)?  $default,) {final _that = this;
switch (_that) {
case _ToastConfig() when $default != null:
return $default(_that.duration,_that.category,_that.title,_that.description,_that.action,_that.cancel);case _:
  return null;

}
}

}

/// @nodoc


class _ToastConfig implements ToastConfig {
   _ToastConfig({this.duration, this.category = ToastCategory.success, required this.title, this.description, this.action, this.cancel});
  

@override final  Duration? duration;
@override@JsonKey() final  ToastCategory category;
@override final  String title;
@override final  String? description;
@override final  ToastAction? action;
@override final  ToastAction? cancel;

/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToastConfigCopyWith<_ToastConfig> get copyWith => __$ToastConfigCopyWithImpl<_ToastConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToastConfig&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.action, action) || other.action == action)&&(identical(other.cancel, cancel) || other.cancel == cancel));
}


@override
int get hashCode => Object.hash(runtimeType,duration,category,title,description,action,cancel);

@override
String toString() {
  return 'ToastConfig(duration: $duration, category: $category, title: $title, description: $description, action: $action, cancel: $cancel)';
}


}

/// @nodoc
abstract mixin class _$ToastConfigCopyWith<$Res> implements $ToastConfigCopyWith<$Res> {
  factory _$ToastConfigCopyWith(_ToastConfig value, $Res Function(_ToastConfig) _then) = __$ToastConfigCopyWithImpl;
@override @useResult
$Res call({
 Duration? duration, ToastCategory category, String title, String? description, ToastAction? action, ToastAction? cancel
});


@override $ToastActionCopyWith<$Res>? get action;@override $ToastActionCopyWith<$Res>? get cancel;

}
/// @nodoc
class __$ToastConfigCopyWithImpl<$Res>
    implements _$ToastConfigCopyWith<$Res> {
  __$ToastConfigCopyWithImpl(this._self, this._then);

  final _ToastConfig _self;
  final $Res Function(_ToastConfig) _then;

/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? duration = freezed,Object? category = null,Object? title = null,Object? description = freezed,Object? action = freezed,Object? cancel = freezed,}) {
  return _then(_ToastConfig(
duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ToastCategory,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ToastAction?,cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as ToastAction?,
  ));
}

/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToastActionCopyWith<$Res>? get action {
    if (_self.action == null) {
    return null;
  }

  return $ToastActionCopyWith<$Res>(_self.action!, (value) {
    return _then(_self.copyWith(action: value));
  });
}/// Create a copy of ToastConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToastActionCopyWith<$Res>? get cancel {
    if (_self.cancel == null) {
    return null;
  }

  return $ToastActionCopyWith<$Res>(_self.cancel!, (value) {
    return _then(_self.copyWith(cancel: value));
  });
}
}

/// @nodoc
mixin _$ToastAction {

 String? get label; VoidCallback? get onclick;
/// Create a copy of ToastAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastActionCopyWith<ToastAction> get copyWith => _$ToastActionCopyWithImpl<ToastAction>(this as ToastAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastAction&&(identical(other.label, label) || other.label == label)&&(identical(other.onclick, onclick) || other.onclick == onclick));
}


@override
int get hashCode => Object.hash(runtimeType,label,onclick);

@override
String toString() {
  return 'ToastAction(label: $label, onclick: $onclick)';
}


}

/// @nodoc
abstract mixin class $ToastActionCopyWith<$Res>  {
  factory $ToastActionCopyWith(ToastAction value, $Res Function(ToastAction) _then) = _$ToastActionCopyWithImpl;
@useResult
$Res call({
 String? label, VoidCallback? onclick
});




}
/// @nodoc
class _$ToastActionCopyWithImpl<$Res>
    implements $ToastActionCopyWith<$Res> {
  _$ToastActionCopyWithImpl(this._self, this._then);

  final ToastAction _self;
  final $Res Function(ToastAction) _then;

/// Create a copy of ToastAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? onclick = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,onclick: freezed == onclick ? _self.onclick : onclick // ignore: cast_nullable_to_non_nullable
as VoidCallback?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToastAction].
extension ToastActionPatterns on ToastAction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToastAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToastAction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToastAction value)  $default,){
final _that = this;
switch (_that) {
case _ToastAction():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToastAction value)?  $default,){
final _that = this;
switch (_that) {
case _ToastAction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label,  VoidCallback? onclick)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToastAction() when $default != null:
return $default(_that.label,_that.onclick);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label,  VoidCallback? onclick)  $default,) {final _that = this;
switch (_that) {
case _ToastAction():
return $default(_that.label,_that.onclick);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label,  VoidCallback? onclick)?  $default,) {final _that = this;
switch (_that) {
case _ToastAction() when $default != null:
return $default(_that.label,_that.onclick);case _:
  return null;

}
}

}

/// @nodoc


class _ToastAction implements ToastAction {
   _ToastAction({this.label, this.onclick});
  

@override final  String? label;
@override final  VoidCallback? onclick;

/// Create a copy of ToastAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToastActionCopyWith<_ToastAction> get copyWith => __$ToastActionCopyWithImpl<_ToastAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToastAction&&(identical(other.label, label) || other.label == label)&&(identical(other.onclick, onclick) || other.onclick == onclick));
}


@override
int get hashCode => Object.hash(runtimeType,label,onclick);

@override
String toString() {
  return 'ToastAction(label: $label, onclick: $onclick)';
}


}

/// @nodoc
abstract mixin class _$ToastActionCopyWith<$Res> implements $ToastActionCopyWith<$Res> {
  factory _$ToastActionCopyWith(_ToastAction value, $Res Function(_ToastAction) _then) = __$ToastActionCopyWithImpl;
@override @useResult
$Res call({
 String? label, VoidCallback? onclick
});




}
/// @nodoc
class __$ToastActionCopyWithImpl<$Res>
    implements _$ToastActionCopyWith<$Res> {
  __$ToastActionCopyWithImpl(this._self, this._then);

  final _ToastAction _self;
  final $Res Function(_ToastAction) _then;

/// Create a copy of ToastAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? onclick = freezed,}) {
  return _then(_ToastAction(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,onclick: freezed == onclick ? _self.onclick : onclick // ignore: cast_nullable_to_non_nullable
as VoidCallback?,
  ));
}


}

// dart format on
