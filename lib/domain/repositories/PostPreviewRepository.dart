import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/BaseRepository.dart';

abstract class PostPreviewRepository extends BaseRepository<PostPreviewEntity> {
  Future<List<PostPreviewEntity>> getByUserId(String id);
  Future<List<PostPreviewEntity>> getByTag(String tag);
}
