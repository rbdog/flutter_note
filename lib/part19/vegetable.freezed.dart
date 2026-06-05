// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vegetable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Vegetable {

// 名前
 String get name;// 色
 String get color;// 旬の季節
 String get season;
/// Create a copy of Vegetable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VegetableCopyWith<Vegetable> get copyWith => _$VegetableCopyWithImpl<Vegetable>(this as Vegetable, _$identity);

  /// Serializes this Vegetable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vegetable&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.season, season) || other.season == season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,color,season);

@override
String toString() {
  return 'Vegetable(name: $name, color: $color, season: $season)';
}


}

/// @nodoc
abstract mixin class $VegetableCopyWith<$Res>  {
  factory $VegetableCopyWith(Vegetable value, $Res Function(Vegetable) _then) = _$VegetableCopyWithImpl;
@useResult
$Res call({
 String name, String color, String season
});




}
/// @nodoc
class _$VegetableCopyWithImpl<$Res>
    implements $VegetableCopyWith<$Res> {
  _$VegetableCopyWithImpl(this._self, this._then);

  final Vegetable _self;
  final $Res Function(Vegetable) _then;

/// Create a copy of Vegetable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? color = null,Object? season = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Vegetable].
extension VegetablePatterns on Vegetable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vegetable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vegetable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vegetable value)  $default,){
final _that = this;
switch (_that) {
case _Vegetable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vegetable value)?  $default,){
final _that = this;
switch (_that) {
case _Vegetable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String color,  String season)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vegetable() when $default != null:
return $default(_that.name,_that.color,_that.season);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String color,  String season)  $default,) {final _that = this;
switch (_that) {
case _Vegetable():
return $default(_that.name,_that.color,_that.season);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String color,  String season)?  $default,) {final _that = this;
switch (_that) {
case _Vegetable() when $default != null:
return $default(_that.name,_that.color,_that.season);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Vegetable implements Vegetable {
  const _Vegetable({required this.name, required this.color, required this.season});
  factory _Vegetable.fromJson(Map<String, dynamic> json) => _$VegetableFromJson(json);

// 名前
@override final  String name;
// 色
@override final  String color;
// 旬の季節
@override final  String season;

/// Create a copy of Vegetable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VegetableCopyWith<_Vegetable> get copyWith => __$VegetableCopyWithImpl<_Vegetable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VegetableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vegetable&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.season, season) || other.season == season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,color,season);

@override
String toString() {
  return 'Vegetable(name: $name, color: $color, season: $season)';
}


}

/// @nodoc
abstract mixin class _$VegetableCopyWith<$Res> implements $VegetableCopyWith<$Res> {
  factory _$VegetableCopyWith(_Vegetable value, $Res Function(_Vegetable) _then) = __$VegetableCopyWithImpl;
@override @useResult
$Res call({
 String name, String color, String season
});




}
/// @nodoc
class __$VegetableCopyWithImpl<$Res>
    implements _$VegetableCopyWith<$Res> {
  __$VegetableCopyWithImpl(this._self, this._then);

  final _Vegetable _self;
  final $Res Function(_Vegetable) _then;

/// Create a copy of Vegetable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? color = null,Object? season = null,}) {
  return _then(_Vegetable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
