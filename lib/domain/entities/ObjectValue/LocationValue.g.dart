// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationValue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      timezone: json['timezone'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'timezone': instance.timezone,
    };
