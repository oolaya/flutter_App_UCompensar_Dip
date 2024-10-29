import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getByIdUser.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/navigationBar.dart';

class UserPage extends StatelessWidget {
  // final GetUserUseCase _getUserUseCase;
  final GetByIdUserUseCase _getUserByIdUseCase;
  UserPage(this._getUserByIdUseCase);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: FutureBuilder<UserFullEntity>(
          future: _getUserByIdUseCase
              .execute('60d0fe4f5311236168a109ca')
              .then((value) => value!),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Text('User: ${snapshot.data!.firstName}');
            } else {
              return const Text('Error');
            }
          }),
      bottomNavigationBar: NavigationBarPartial(),
    );
  }
}
