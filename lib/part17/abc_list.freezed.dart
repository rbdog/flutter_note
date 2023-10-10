// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abc_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AbcList {
  List<String> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbcListCopyWith<AbcList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbcListCopyWith<$Res> {
  factory $AbcListCopyWith(AbcList value, $Res Function(AbcList) then) =
      _$AbcListCopyWithImpl<$Res, AbcList>;
  @useResult
  $Res call({List<String> values});
}

/// @nodoc
class _$AbcListCopyWithImpl<$Res, $Val extends AbcList>
    implements $AbcListCopyWith<$Res> {
  _$AbcListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbcListCopyWith<$Res> implements $AbcListCopyWith<$Res> {
  factory _$$_AbcListCopyWith(
          _$_AbcList value, $Res Function(_$_AbcList) then) =
      __$$_AbcListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> values});
}

/// @nodoc
class __$$_AbcListCopyWithImpl<$Res>
    extends _$AbcListCopyWithImpl<$Res, _$_AbcList>
    implements _$$_AbcListCopyWith<$Res> {
  __$$_AbcListCopyWithImpl(_$_AbcList _value, $Res Function(_$_AbcList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$_AbcList(
      null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AbcList implements _AbcList {
  _$_AbcList(final List<String> values) : _values = values;

  final List<String> _values;
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'AbcList(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbcList &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbcListCopyWith<_$_AbcList> get copyWith =>
      __$$_AbcListCopyWithImpl<_$_AbcList>(this, _$identity);
}

abstract class _AbcList implements AbcList {
  factory _AbcList(final List<String> values) = _$_AbcList;

  @override
  List<String> get values;
  @override
  @JsonKey(ignore: true)
  _$$_AbcListCopyWith<_$_AbcList> get copyWith =>
      throw _privateConstructorUsedError;
}
