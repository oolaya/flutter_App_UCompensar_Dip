import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/UserRepository.dart';

class GetUserUseCase {
  final UserRepository _userRepository;
  GetUserUseCase(this._userRepository);

  Future<List<UserEntity>> execute() async {
    return await _userRepository.getAll();
  }
}
