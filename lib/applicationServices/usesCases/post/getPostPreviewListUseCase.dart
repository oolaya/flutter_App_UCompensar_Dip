import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/PostPreviewRepository.dart';

class GetPostPreviewListUseCase {
  final PostPreviewRepository _postPreviewRepository;

  GetPostPreviewListUseCase(this._postPreviewRepository);

  Future<List<PostPreviewEntity>> execute() async {
    return await _postPreviewRepository.getAll();
  }
}
