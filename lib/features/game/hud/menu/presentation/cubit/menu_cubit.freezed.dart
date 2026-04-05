// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuState()';
}


}

/// @nodoc
class $MenuStateCopyWith<$Res>  {
$MenuStateCopyWith(MenuState _, $Res Function(MenuState) __);
}


/// Adds pattern-matching-related methods to [MenuState].
extension MenuStatePatterns on MenuState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _MenuShow value)?  menuShow,TResult Function( _MenuHide value)?  menuHide,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MenuShow() when menuShow != null:
return menuShow(_that);case _MenuHide() when menuHide != null:
return menuHide(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _MenuShow value)  menuShow,required TResult Function( _MenuHide value)  menuHide,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _MenuShow():
return menuShow(_that);case _MenuHide():
return menuHide(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _MenuShow value)?  menuShow,TResult? Function( _MenuHide value)?  menuHide,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _MenuShow() when menuShow != null:
return menuShow(_that);case _MenuHide() when menuHide != null:
return menuHide(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String bestScore,  String currentScore)?  menuShow,TResult Function()?  menuHide,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MenuShow() when menuShow != null:
return menuShow(_that.bestScore,_that.currentScore);case _MenuHide() when menuHide != null:
return menuHide();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String bestScore,  String currentScore)  menuShow,required TResult Function()  menuHide,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _MenuShow():
return menuShow(_that.bestScore,_that.currentScore);case _MenuHide():
return menuHide();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String bestScore,  String currentScore)?  menuShow,TResult? Function()?  menuHide,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _MenuShow() when menuShow != null:
return menuShow(_that.bestScore,_that.currentScore);case _MenuHide() when menuHide != null:
return menuHide();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MenuState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuState.initial()';
}


}




/// @nodoc


class _MenuShow implements MenuState {
  const _MenuShow({required this.bestScore, required this.currentScore});
  

 final  String bestScore;
 final  String currentScore;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuShowCopyWith<_MenuShow> get copyWith => __$MenuShowCopyWithImpl<_MenuShow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuShow&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.currentScore, currentScore) || other.currentScore == currentScore));
}


@override
int get hashCode => Object.hash(runtimeType,bestScore,currentScore);

@override
String toString() {
  return 'MenuState.menuShow(bestScore: $bestScore, currentScore: $currentScore)';
}


}

/// @nodoc
abstract mixin class _$MenuShowCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuShowCopyWith(_MenuShow value, $Res Function(_MenuShow) _then) = __$MenuShowCopyWithImpl;
@useResult
$Res call({
 String bestScore, String currentScore
});




}
/// @nodoc
class __$MenuShowCopyWithImpl<$Res>
    implements _$MenuShowCopyWith<$Res> {
  __$MenuShowCopyWithImpl(this._self, this._then);

  final _MenuShow _self;
  final $Res Function(_MenuShow) _then;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bestScore = null,Object? currentScore = null,}) {
  return _then(_MenuShow(
bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as String,currentScore: null == currentScore ? _self.currentScore : currentScore // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MenuHide implements MenuState {
  const _MenuHide();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuHide);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuState.menuHide()';
}


}




// dart format on
