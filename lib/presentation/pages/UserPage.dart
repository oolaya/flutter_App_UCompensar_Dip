import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';

class UserPage extends StatelessWidget {
  final GetUserUseCase _getUserUseCase;
  UserPage(this._getUserUseCase);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Page'),
        ),
        body: FutureBuilder<List<UserEntity>>(
            future: _getUserUseCase.excete(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                return Text('User: ${snapshot.data?.length}');
              } else {
                return const Text('Error');
              }
            }));
  }
}
