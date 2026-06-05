// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abc_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AbcList {

 List<String> get values;
/// Create a copy of AbcList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbcListCopyWith<AbcList> get copyWith => _$AbcListCopyWithImpl<AbcList>(this as AbcList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbcList&&const DeepCollectionEquality().equals(other.values, values));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'AbcList(values: $values)';
}


}

/// @nodoc
abstract mixin class $AbcListCopyWith<$Res>  {
  factory $AbcListCopyWith(AbcList value, $Res Function(AbcList) _then) = _$AbcListCopyWithImpl;
@useResult
$Res call({
 List<String> values
});




}
/// @nodoc
class _$AbcListCopyWithImpl<$Res>
    implements $AbcListCopyWith<$Res> {
  _$AbcListCopyWithImpl(this._self, this._then);

  final AbcList _self;
  final $Res Function(AbcList) _then;

/// Create a copy of AbcList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? values = null,}) {
  return _then(_self.copyWith(
values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AbcList].
extension AbcListPatterns on AbcList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbcList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbcList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbcList value)  $default,){
final _that = this;
switch (_that) {
case _AbcList():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbcList value)?  $default,){
final _that = this;
switch (_that) {
case _AbcList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbcList() when $default != null:
return $default(_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> values)  $default,) {final _that = this;
switch (_that) {
case _AbcList():
return $default(_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> values)?  $default,) {final _that = this;
switch (_that) {
case _AbcList() when $default != null:
return $default(_that.values);case _:
  return null;

}
}

}

/// @nodoc


class _AbcList implements AbcList {
   _AbcList(final  List<String> values): _values = values;
  

 final  List<String> _values;
@override List<String> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of AbcList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbcListCopyWith<_AbcList> get copyWith => __$AbcListCopyWithImpl<_AbcList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbcList&&const DeepCollectionEquality().equals(other._values, _values));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'AbcList(values: $values)';
}


}

/// @nodoc
abstract mixin class _$AbcListCopyWith<$Res> implements $AbcListCopyWith<$Res> {
  factory _$AbcListCopyWith(_AbcList value, $Res Function(_AbcList) _then) = __$AbcListCopyWithImpl;
@override @useResult
$Res call({
 List<String> values
});




}
/// @nodoc
class __$AbcListCopyWithImpl<$Res>
    implements _$AbcListCopyWith<$Res> {
  __$AbcListCopyWithImpl(this._self, this._then);

  final _AbcList _self;
  final $Res Function(_AbcList) _then;

/// Create a copy of AbcList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? values = null,}) {
  return _then(_AbcList(
null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
