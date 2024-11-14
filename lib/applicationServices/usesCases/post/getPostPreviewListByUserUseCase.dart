import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostPreviewRepository.dart';

class GetPostPreviewListByUserUseCase {
  final PostPreviewRepository _postPreviewRepository;

  GetPostPreviewListByUserUseCase(this._postPreviewRepository);

  Future<List<PostPreviewEntity>> execute(String id) async {
    return await _postPreviewRepository.getByUserId(id);
  }  
}
