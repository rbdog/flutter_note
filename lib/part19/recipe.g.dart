// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      title: json['title'] as String,
      calories: json['calories'] as int,
      vegetables: (json['vegetables'] as List<dynamic>)
          .map((e) => Vegetable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'calories': instance.calories,
      'vegetables': instance.vegetables,
    };
