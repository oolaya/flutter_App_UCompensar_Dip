

import 'package:flutter_app_ucompensar_dip/domain/entities/Post/PostEntity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostCreateEntitys/Post.Create.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostCreateRepository.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';

class PostCreateService implements PostCreateRepository{

  final DumyApi<PostCreateEntity, PostEntity> _dumyApi;
  PostCreateService(this._dumyApi);
  @override
  Future<PostEntity> create(PostCreateEntity item) async{
    final PostEntity post = await _dumyApi.create(PostEntity.fromJson, 'post/create', item);
    return post;
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<PostCreateEntity>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<PostCreateEntity?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(String id, PostCreateEntity item) {
    // TODO: implement update
    throw UnimplementedError();
  }

}