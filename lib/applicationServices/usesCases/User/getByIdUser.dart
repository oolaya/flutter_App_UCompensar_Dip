import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/UserFullRepository.dart';

class GetByIdUserUseCase {
  final UserFullRepository _userRepository;
  GetByIdUserUseCase(this._userRepository);

  Future<UserFullEntity?> execute(String id) async {
    return _userRepository.getById(id);
  }
}
