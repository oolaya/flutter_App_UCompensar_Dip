// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntityImpl _$$PostEntityImplFromJson(Map<String, dynamic> json) =>
    _$PostEntityImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      image: json['image'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      link: json['link'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      publishDate: json['publishDate'] as String,
      owner: UserEntity.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostEntityImplToJson(_$PostEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'link': instance.link,
      'tags': instance.tags,
      'publishDate': instance.publishDate,
      'owner': instance.owner,
    };
