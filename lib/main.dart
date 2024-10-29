import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/user/UserFullSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/user/UserSevice.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/post/PostPreviewService.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getByIdUser.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/User/getUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByTagUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/User/User.Entity.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/UserFull/UserFull.Entity.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/http/DumyApi/DumyApi.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/HomePage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/PostPreviewPage.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/UserPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<UserService>(create: (_) => UserService(DumyApi<UserEntity>())),
      Provider<UserFullService>(
          create: (_) => UserFullService(DumyApi<UserFullEntity>())),
      Provider<PostPreviewService>(
        create: (_) => PostPreviewService(DumyApi<PostPreviewEntity>()),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/User': (context) => UserPage(
              GetByIdUserUseCase(UserFullService(DumyApi<UserFullEntity>())),
              title: "User View Dinamico",
            ),
        '/PostPreview': (context) => PostPreviewPage(
            GetPostPreviewListUseCase(
                PostPreviewService(DumyApi<PostPreviewEntity>())),
            GetPostPreviewListByUserUseCase(
                PostPreviewService(DumyApi<PostPreviewEntity>())),
            GetPostPreviewListByTagUseCase(
                PostPreviewService(DumyApi<PostPreviewEntity>()))),
      },
    );
  }
}
