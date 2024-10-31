 
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PostEntity.freezed.dart';
part 'PostEntity.g.dart';
@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required String id,
    required String text,
    required String image,
    @Default(0) int likes,
    required String link,
    required List<String> tags,
    required String publishDate,
    required UserEntity owner,
  }) = _PostEntity;
 
  factory PostEntity.fromJson(Map<String, dynamic> json) => _$PostEntityFromJson(json);
}