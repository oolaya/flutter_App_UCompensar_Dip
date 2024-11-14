// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostPreview.Entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPreviewEntityImpl _$$PostPreviewEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPreviewEntityImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      image: json['image'] as String,
      likes: (json['likes'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      publishDate: json['publishDate'] as String,
      owner: UserEntity.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostPreviewEntityImplToJson(
        _$PostPreviewEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'tags': instance.tags,
      'publishDate': instance.publishDate,
      'owner': instance.owner,
    };
