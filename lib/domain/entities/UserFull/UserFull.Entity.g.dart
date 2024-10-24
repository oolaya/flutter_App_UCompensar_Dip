// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserFull.Entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFullEntityImpl _$$UserFullEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserFullEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      picture: json['picture'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      phone: json['phone'] as String?,
      registerDate: json['registerDate'] == null
          ? null
          : DateTime.parse(json['registerDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$$UserFullEntityImplToJson(
        _$UserFullEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
      'gender': instance.gender,
      'email': instance.email,
      'location': instance.location,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'phone': instance.phone,
      'registerDate': instance.registerDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };
