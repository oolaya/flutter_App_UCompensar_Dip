import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/UserFullSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/UserSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/post/PostPreviewService.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getByIdUser.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/HomePage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/PostPreviewPage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/UserPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/User': (context) => UserPage(
              GetUserUseCase(UserService(DumyApi<UserEntity>())),
              GetByIdUserUseCase(UserFullService(DumyApi<UserFullEntity>()))),
          '/PostPreview': (context) => PostPreviewPage(
              GetPostPreviewListUseCase(
                  PostPreviewService(DumyApi<PostPreviewEntity>())))
        },
      ),
    );
  }
}
