// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      title: json['title'] as String,
      calories: json['calories'] as int,
      vegetables: (json['vegetables'] as List<dynamic>)
          .map((e) => Vegetable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'title': instance.title,
      'calories': instance.calories,
      'vegetables': instance.vegetables,
    };
