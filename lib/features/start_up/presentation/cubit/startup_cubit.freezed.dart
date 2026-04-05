// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'startup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StartupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StartupState()';
}


}

/// @nodoc
class $StartupStateCopyWith<$Res>  {
$StartupStateCopyWith(StartupState _, $Res Function(StartupState) __);
}


/// Adds pattern-matching-related methods to [StartupState].
extension StartupStatePatterns on StartupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ShowGame value)?  showGame,TResult Function( _ShowContent value)?  showContent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ShowGame() when showGame != null:
return showGame(_that);case _ShowContent() when showContent != null:
return showContent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ShowGame value)  showGame,required TResult Function( _ShowContent value)  showContent,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ShowGame():
return showGame(_that);case _ShowContent():
return showContent(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ShowGame value)?  showGame,TResult? Function( _ShowContent value)?  showContent,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ShowGame() when showGame != null:
return showGame(_that);case _ShowContent() when showContent != null:
return showContent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  showGame,TResult Function( String content)?  showContent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ShowGame() when showGame != null:
return showGame();case _ShowContent() when showContent != null:
return showContent(_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  showGame,required TResult Function( String content)  showContent,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _ShowGame():
return showGame();case _ShowContent():
return showContent(_that.content);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  showGame,TResult? Function( String content)?  showContent,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ShowGame() when showGame != null:
return showGame();case _ShowContent() when showContent != null:
return showContent(_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StartupState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StartupState.initial()';
}


}




/// @nodoc


class _ShowGame implements StartupState {
  const _ShowGame();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StartupState.showGame()';
}


}




/// @nodoc


class _ShowContent implements StartupState {
  const _ShowContent(this.content);
  

 final  String content;

/// Create a copy of StartupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowContentCopyWith<_ShowContent> get copyWith => __$ShowContentCopyWithImpl<_ShowContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowContent&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'StartupState.showContent(content: $content)';
}


}

/// @nodoc
abstract mixin class _$ShowContentCopyWith<$Res> implements $StartupStateCopyWith<$Res> {
  factory _$ShowContentCopyWith(_ShowContent value, $Res Function(_ShowContent) _then) = __$ShowContentCopyWithImpl;
@useResult
$Res call({
 String content
});




}
/// @nodoc
class __$ShowContentCopyWithImpl<$Res>
    implements _$ShowContentCopyWith<$Res> {
  __$ShowContentCopyWithImpl(this._self, this._then);

  final _ShowContent _self;
  final $Res Function(_ShowContent) _then;

/// Create a copy of StartupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = null,}) {
  return _then(_ShowContent(
null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
