import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostPreviewRepository.dart';

class GetPostPreviewListByTagUseCase {
  final PostPreviewRepository _postPreviewRepository;

  GetPostPreviewListByTagUseCase(this._postPreviewRepository);

  Future<List<PostPreviewEntity>> execute(String tag) async {
    return await _postPreviewRepository.getByTag(tag);
  }  
}
