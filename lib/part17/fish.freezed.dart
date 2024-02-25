// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Fish {
// 名前
  String get name => throw _privateConstructorUsedError; // 大きさ
  int get size => throw _privateConstructorUsedError; // 値段
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FishCopyWith<Fish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FishCopyWith<$Res> {
  factory $FishCopyWith(Fish value, $Res Function(Fish) then) =
      _$FishCopyWithImpl<$Res, Fish>;
  @useResult
  $Res call({String name, int size, int price});
}

/// @nodoc
class _$FishCopyWithImpl<$Res, $Val extends Fish>
    implements $FishCopyWith<$Res> {
  _$FishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FishImplCopyWith<$Res> implements $FishCopyWith<$Res> {
  factory _$$FishImplCopyWith(
          _$FishImpl value, $Res Function(_$FishImpl) then) =
      __$$FishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int size, int price});
}

/// @nodoc
class __$$FishImplCopyWithImpl<$Res>
    extends _$FishCopyWithImpl<$Res, _$FishImpl>
    implements _$$FishImplCopyWith<$Res> {
  __$$FishImplCopyWithImpl(_$FishImpl _value, $Res Function(_$FishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? price = null,
  }) {
    return _then(_$FishImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FishImpl implements _Fish {
  const _$FishImpl(
      {required this.name, required this.size, required this.price});

// 名前
  @override
  final String name;
// 大きさ
  @override
  final int size;
// 値段
  @override
  final int price;

  @override
  String toString() {
    return 'Fish(name: $name, size: $size, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FishImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, size, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      __$$FishImplCopyWithImpl<_$FishImpl>(this, _$identity);
}

abstract class _Fish implements Fish {
  const factory _Fish(
      {required final String name,
      required final int size,
      required final int price}) = _$FishImpl;

  @override // 名前
  String get name;
  @override // 大きさ
  int get size;
  @override // 値段
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
