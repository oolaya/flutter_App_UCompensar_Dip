import 'dart:html';
import './../ObjectValue/LocationValue.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserFull.Entity.freezed.dart';
part 'UserFull.Entity.g.dart';

@freezed
class UserFullEntity with _$UserFullEntity {
  const factory UserFullEntity({
    required String id,
    required String title,
    required String firstName,
    required String lastName,
    required String picture,
    required String gender,
    required String email,
    Location? location,
    DateTime? dateOfBirth,
    String? phone,
    DateTime? registerDate,
    DateTime? updatedDate,
  }) = _UserFullEntity;

  factory UserFullEntity.fromJson(Map<String, dynamic> json) =>
      _$UserFullEntityFromJson(json);
}
