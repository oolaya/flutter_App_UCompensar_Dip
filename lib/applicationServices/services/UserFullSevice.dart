import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/repositories/UserFullRepository.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';

class UserFullService implements UserFullRepository {
  final DumyApi<UserFullEntity, void> _dumyApi;
  UserFullService(this._dumyApi);

  @override
  Future<void> create(UserFullEntity item) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<List<UserFullEntity>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<UserFullEntity?> getById(String id) async {
    final user = await _dumyApi.getById(UserFullEntity.fromJson, 'user/$id');
    return user;
  }

  @override
  Future<void> update(String id, UserFullEntity item) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
