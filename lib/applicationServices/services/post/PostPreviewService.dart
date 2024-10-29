import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostPreviewRepository.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';

class PostPreviewService implements PostPreviewRepository {
  final DumyApi<PostPreviewEntity> _dumyApi;

  PostPreviewService(this._dumyApi);

  @override
  Future<void> create(PostPreviewEntity item) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<PostPreviewEntity>> getAll() async {
    final List<PostPreviewEntity> post =
        await _dumyApi.get(PostPreviewEntity.fromJson, 'post');
    return post;
  }

  @override
  Future<PostPreviewEntity?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(String id, PostPreviewEntity item) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
