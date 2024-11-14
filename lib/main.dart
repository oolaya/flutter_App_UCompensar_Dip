import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/settings/SettingsService.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/user/UserFullSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/user/UserSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/post/PostPreviewService.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/controllers/setting/settingContoller.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/UCompensarPage.dart';
import 'package:provider/provider.dart';

void main() async {
  final settingController = SettingController(SettingsService());
  await settingController.loadSettings();

  runApp(MultiProvider(
    providers: [
      Provider<UserService>(create: (_) => UserService(DumyApi<UserEntity>())),
      Provider<UserFullService>(
          create: (_) => UserFullService(DumyApi<UserFullEntity>())),
      Provider<PostPreviewService>(
        create: (_) => PostPreviewService(DumyApi<PostPreviewEntity>()),
      )
    ],
    child: UCompensarPage(settingsController: settingController),
  ));
}
