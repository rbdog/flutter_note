// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Fish {

 String get name; int get size; int get price;
/// Create a copy of Fish
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FishCopyWith<Fish> get copyWith => _$FishCopyWithImpl<Fish>(this as Fish, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Fish;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fish&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.size, _this.size) || other.size == _this.size)&&(identical(other.price, _this.price) || other.price == _this.price));
}


@override
int get hashCode {
  final _this = this as Fish;
  return Object.hash(runtimeType,_this.name,_this.size,_this.price);
}

@override
String toString() {
  final _this = this as Fish;
  return 'Fish(name: ${_this.name}, size: ${_this.size}, price: ${_this.price})';
}


}

/// @nodoc
abstract mixin class $FishCopyWith<$Res>  {
  factory $FishCopyWith(Fish value, $Res Function(Fish) _then) = _$FishCopyWithImpl;
@useResult
$Res call({
 String name, int size, int price
});




}
/// @nodoc
class _$FishCopyWithImpl<$Res>
    implements $FishCopyWith<$Res> {
  _$FishCopyWithImpl(this._self, this._then);

  final Fish _self;
  final $Res Function(Fish) _then;

/// Create a copy of Fish
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? size = null,Object? price = null,}) {
  return _then(Fish(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Fish].
extension FishPatterns on Fish {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fish value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fish() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fish value)  $default,){
final _that = this;
switch (_that) {
case _Fish():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fish value)?  $default,){
final _that = this;
switch (_that) {
case _Fish() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int size,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fish() when $default != null:
return $default(_that.name,_that.size,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int size,  int price)  $default,) {final _that = this;
switch (_that) {
case _Fish():
return $default(_that.name,_that.size,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int size,  int price)?  $default,) {final _that = this;
switch (_that) {
case _Fish() when $default != null:
return $default(_that.name,_that.size,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _Fish implements Fish {
  const _Fish({required this.name, required this.size, required this.price});
  

@override final  String name;
@override final  int size;
@override final  int price;

/// Create a copy of Fish
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FishCopyWith<_Fish> get copyWith => __$FishCopyWithImpl<_Fish>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fish&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,size,price);
}

@override
String toString() {
    return 'Fish(name: $name, size: $size, price: $price)';
}


}

/// @nodoc
abstract mixin class _$FishCopyWith<$Res> implements $FishCopyWith<$Res> {
  factory _$FishCopyWith(_Fish value, $Res Function(_Fish) _then) = __$FishCopyWithImpl;
@override @useResult
$Res call({
 String name, int size, int price
});




}
/// @nodoc
class __$FishCopyWithImpl<$Res>
    implements _$FishCopyWith<$Res> {
  __$FishCopyWithImpl(this._self, this._then);

  final _Fish _self;
  final $Res Function(_Fish) _then;

/// Create a copy of Fish
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? size = null,Object? price = null,}) {
  return _then(_Fish(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
