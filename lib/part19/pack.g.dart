// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackImpl _$$PackImplFromJson(Map<String, dynamic> json) => _$PackImpl(
      size: json['size'] as String,
      price: json['price'] as int,
      content: Vegetable.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackImplToJson(_$PackImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'price': instance.price,
      'content': instance.content,
    };
