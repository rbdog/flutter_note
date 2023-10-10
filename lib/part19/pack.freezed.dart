// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pack _$PackFromJson(Map<String, dynamic> json) {
  return _Pack.fromJson(json);
}

/// @nodoc
mixin _$Pack {
// 大きさ
  String get size => throw _privateConstructorUsedError; // 値段
  int get price => throw _privateConstructorUsedError; // 中身の野菜
  Vegetable get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackCopyWith<Pack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackCopyWith<$Res> {
  factory $PackCopyWith(Pack value, $Res Function(Pack) then) =
      _$PackCopyWithImpl<$Res, Pack>;
  @useResult
  $Res call({String size, int price, Vegetable content});

  $VegetableCopyWith<$Res> get content;
}

/// @nodoc
class _$PackCopyWithImpl<$Res, $Val extends Pack>
    implements $PackCopyWith<$Res> {
  _$PackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? price = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Vegetable,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VegetableCopyWith<$Res> get content {
    return $VegetableCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PackCopyWith<$Res> implements $PackCopyWith<$Res> {
  factory _$$_PackCopyWith(_$_Pack value, $Res Function(_$_Pack) then) =
      __$$_PackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, int price, Vegetable content});

  @override
  $VegetableCopyWith<$Res> get content;
}

/// @nodoc
class __$$_PackCopyWithImpl<$Res> extends _$PackCopyWithImpl<$Res, _$_Pack>
    implements _$$_PackCopyWith<$Res> {
  __$$_PackCopyWithImpl(_$_Pack _value, $Res Function(_$_Pack) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? price = null,
    Object? content = null,
  }) {
    return _then(_$_Pack(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Vegetable,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pack implements _Pack {
  const _$_Pack(
      {required this.size, required this.price, required this.content});

  factory _$_Pack.fromJson(Map<String, dynamic> json) => _$$_PackFromJson(json);

// 大きさ
  @override
  final String size;
// 値段
  @override
  final int price;
// 中身の野菜
  @override
  final Vegetable content;

  @override
  String toString() {
    return 'Pack(size: $size, price: $price, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pack &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, price, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackCopyWith<_$_Pack> get copyWith =>
      __$$_PackCopyWithImpl<_$_Pack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackToJson(
      this,
    );
  }
}

abstract class _Pack implements Pack {
  const factory _Pack(
      {required final String size,
      required final int price,
      required final Vegetable content}) = _$_Pack;

  factory _Pack.fromJson(Map<String, dynamic> json) = _$_Pack.fromJson;

  @override // 大きさ
  String get size;
  @override // 値段
  int get price;
  @override // 中身の野菜
  Vegetable get content;
  @override
  @JsonKey(ignore: true)
  _$$_PackCopyWith<_$_Pack> get copyWith => throw _privateConstructorUsedError;
}
