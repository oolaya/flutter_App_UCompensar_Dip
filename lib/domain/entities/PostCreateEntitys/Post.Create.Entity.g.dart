// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Post.Create.Entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCreateEntityImpl _$$PostCreateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCreateEntityImpl(
      text: json['text'] as String,
      image: json['image'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      owner: json['owner'] as String,
    );

Map<String, dynamic> _$$PostCreateEntityImplToJson(
        _$PostCreateEntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'tags': instance.tags,
      'owner': instance.owner,
    };
