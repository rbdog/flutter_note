// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  title: json['title'] as String,
  calories: (json['calories'] as num).toInt(),
  vegetables: (json['vegetables'] as List<dynamic>)
      .map((e) => Vegetable.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'title': instance.title,
  'calories': instance.calories,
  'vegetables': instance.vegetables,
};
