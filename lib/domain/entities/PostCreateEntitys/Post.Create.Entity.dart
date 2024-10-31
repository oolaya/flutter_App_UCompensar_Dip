import 'package:freezed_annotation/freezed_annotation.dart';

part 'Post.Create.Entity.freezed.dart';
part 'Post.Create.Entity.g.dart';

@freezed
class PostCreateEntity with _$PostCreateEntity {
  const factory PostCreateEntity({
    required String text,
    required String image,
    @Default(0) int likes,
    required List<String> tags,
    required String owner
  }) = _PostCreateEntity;

  factory PostCreateEntity.fromJson(Map<String, dynamic> json) =>
      _$PostCreateEntityFromJson(json);
}