import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/post/PostPreviewService.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/user/UserFullSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getByIdUser.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByTagUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/controllers/setting/settingContoller.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';
import 'package:flutter_app_ucompensar_dip/presentation/forms/user/user.create.form.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/PostPreviewPage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/UserPage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/landingPage.dart';

class UCompensarPage extends StatelessWidget {
  final SettingController settingsController;
  const UCompensarPage({super.key, required this.settingsController});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: settingsController,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            themeMode: settingsController.themeMode,
            routes: {
              '/': (context) =>
                  LandingPage(settingsController: settingsController),
              '/User': (context) => UserPage(
                    GetByIdUserUseCase(
                        UserFullService(DumyApi<UserFullEntity>())),
                    title: "User View Dinamico",
                  ),
              '/PostPreview': (context) => PostPreviewPage(
                  GetPostPreviewListUseCase(
                      PostPreviewService(DumyApi<PostPreviewEntity>())),
                  GetPostPreviewListByUserUseCase(
                      PostPreviewService(DumyApi<PostPreviewEntity>())),
                  GetPostPreviewListByTagUseCase(
                      PostPreviewService(DumyApi<PostPreviewEntity>()))),
              '/add-user': (context) => UserCreateForm(),
            },
          );
        });
  }
}
