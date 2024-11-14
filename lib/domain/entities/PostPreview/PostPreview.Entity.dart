import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';

part 'PostPreview.Entity.freezed.dart';
part 'PostPreview.Entity.g.dart';

@freezed
class PostPreviewEntity with _$PostPreviewEntity {
  const factory PostPreviewEntity(
      {required String id,
      required String text,
      required String image,
      required int likes,
      required List<String> tags,
      required String publishDate,
      required UserEntity owner}) = _PostPreviewEntity;

  factory PostPreviewEntity.fromJson(Map<String, dynamic> json) =>
      _$PostPreviewEntityFromJson(json);
}
