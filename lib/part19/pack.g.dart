// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pack _$$_PackFromJson(Map<String, dynamic> json) => _$_Pack(
      size: json['size'] as String,
      price: json['price'] as int,
      content: Vegetable.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PackToJson(_$_Pack instance) => <String, dynamic>{
      'size': instance.size,
      'price': instance.price,
      'content': instance.content,
    };
