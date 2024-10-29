import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/navigationBar.dart';

class PostPreviewPage extends StatelessWidget {
  final GetPostPreviewListUseCase _getPostPreviewListUseCase;

  const PostPreviewPage(this._getPostPreviewListUseCase, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<PostPreviewEntity>>(
          future: _getPostPreviewListUseCase.execute(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Text('User: ${snapshot.data![0].text}');
            } else {
              return const Text('Error');
            }
          }),
      bottomNavigationBar: NavigationBarPartial(),
    );
  }
}
