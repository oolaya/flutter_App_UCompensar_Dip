import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/UserRepository.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';

class UserService implements UserRepository {
  final DumyApi<UserEntity> _dumyApi;
  UserService(this._dumyApi);

  @override
  Future<void> create(UserEntity item) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UserEntity>> getAll() async {
    final List<UserEntity> users =
        await _dumyApi.get(UserEntity.fromJson, 'user');
    return users;
  }

  @override
  Future<UserEntity?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(String id, UserEntity item) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
