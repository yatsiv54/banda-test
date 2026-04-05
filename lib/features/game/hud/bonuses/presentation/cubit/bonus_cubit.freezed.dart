// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BonusState()';
}


}

/// @nodoc
class $BonusStateCopyWith<$Res>  {
$BonusStateCopyWith(BonusState _, $Res Function(BonusState) __);
}


/// Adds pattern-matching-related methods to [BonusState].
extension BonusStatePatterns on BonusState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BonusStarted value)?  bonusStarted,TResult Function( _BonusEnded value)?  bonusEnded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BonusStarted() when bonusStarted != null:
return bonusStarted(_that);case _BonusEnded() when bonusEnded != null:
return bonusEnded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BonusStarted value)  bonusStarted,required TResult Function( _BonusEnded value)  bonusEnded,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _BonusStarted():
return bonusStarted(_that);case _BonusEnded():
return bonusEnded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BonusStarted value)?  bonusStarted,TResult? Function( _BonusEnded value)?  bonusEnded,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _BonusStarted() when bonusStarted != null:
return bonusStarted(_that);case _BonusEnded() when bonusEnded != null:
return bonusEnded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( BonusModel bonus)?  bonusStarted,TResult Function()?  bonusEnded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BonusStarted() when bonusStarted != null:
return bonusStarted(_that.bonus);case _BonusEnded() when bonusEnded != null:
return bonusEnded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( BonusModel bonus)  bonusStarted,required TResult Function()  bonusEnded,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _BonusStarted():
return bonusStarted(_that.bonus);case _BonusEnded():
return bonusEnded();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( BonusModel bonus)?  bonusStarted,TResult? Function()?  bonusEnded,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _BonusStarted() when bonusStarted != null:
return bonusStarted(_that.bonus);case _BonusEnded() when bonusEnded != null:
return bonusEnded();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BonusState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BonusState.initial()';
}


}




/// @nodoc


class _BonusStarted implements BonusState {
  const _BonusStarted({required this.bonus});
  

 final  BonusModel bonus;

/// Create a copy of BonusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusStartedCopyWith<_BonusStarted> get copyWith => __$BonusStartedCopyWithImpl<_BonusStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusStarted&&(identical(other.bonus, bonus) || other.bonus == bonus));
}


@override
int get hashCode => Object.hash(runtimeType,bonus);

@override
String toString() {
  return 'BonusState.bonusStarted(bonus: $bonus)';
}


}

/// @nodoc
abstract mixin class _$BonusStartedCopyWith<$Res> implements $BonusStateCopyWith<$Res> {
  factory _$BonusStartedCopyWith(_BonusStarted value, $Res Function(_BonusStarted) _then) = __$BonusStartedCopyWithImpl;
@useResult
$Res call({
 BonusModel bonus
});




}
/// @nodoc
class __$BonusStartedCopyWithImpl<$Res>
    implements _$BonusStartedCopyWith<$Res> {
  __$BonusStartedCopyWithImpl(this._self, this._then);

  final _BonusStarted _self;
  final $Res Function(_BonusStarted) _then;

/// Create a copy of BonusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bonus = null,}) {
  return _then(_BonusStarted(
bonus: null == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as BonusModel,
  ));
}


}

/// @nodoc


class _BonusEnded implements BonusState {
  const _BonusEnded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusEnded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BonusState.bonusEnded()';
}


}




// dart format on
