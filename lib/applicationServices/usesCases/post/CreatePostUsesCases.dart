
import 'package:flutter_app_ucompensar_dip/domain/entities/PostCreateEntitys/Post.Create.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostCreateRepository.dart';

class CreatepostUsesCases{
  final PostCreateRepository _postCreateRepository;

  CreatepostUsesCases(this._postCreateRepository);

  Future<void>execute(PostCreateEntity postCreateEntity) {
    return _postCreateRepository.create(postCreateEntity);
  }

}