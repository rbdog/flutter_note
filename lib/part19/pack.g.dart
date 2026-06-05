// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pack _$PackFromJson(Map<String, dynamic> json) => _Pack(
  size: json['size'] as String,
  price: (json['price'] as num).toInt(),
  content: Vegetable.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PackToJson(_Pack instance) => <String, dynamic>{
  'size': instance.size,
  'price': instance.price,
  'content': instance.content,
};
