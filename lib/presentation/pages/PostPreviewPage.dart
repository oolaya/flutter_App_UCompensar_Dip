import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByTagUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListByUserUseCase.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/usesCases/post/getPostPreviewListUseCase.dart';
import 'package:flutter_app_ucompensar_dip/domain/entities/PostPreview/PostPreview.Entity.dart';
import 'package:flutter_app_ucompensar_dip/presentation/forms/post/post.create.form.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/navigationBar.dart';

class PostPreviewPage extends StatelessWidget {
  final GetPostPreviewListUseCase _getPostPreviewListUseCase;
  final GetPostPreviewListByUserUseCase _getPostPreviewListByUserUseCase;
  final GetPostPreviewListByTagUseCase _getPostPreviewListByTagUseCase;
  const PostPreviewPage(
      this._getPostPreviewListUseCase,
      this._getPostPreviewListByUserUseCase,
      this._getPostPreviewListByTagUseCase,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = (ModalRoute.of(context)?.settings.arguments as String?) ?? 'Sin Titulo';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('from PostPreviewList',
                style: Theme.of(context).textTheme.titleLarge),
            _PostPreviewList(_getPostPreviewListUseCase),
            Text('from PostPreviewListByUser',
                style: Theme.of(context).textTheme.titleLarge),
            _PostPreviewListByUser(_getPostPreviewListByUserUseCase),
            Text('from PostPreviewListByTag',
                style: Theme.of(context).textTheme.titleLarge),
            _PostPreviewListByTag(_getPostPreviewListByTagUseCase),
            Text('Formulario de prueba', style: Theme.of(context).textTheme.titleLarge),
            PostCreateForm(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarPartial(),
    );
  }
}

class _PostPreviewList extends StatelessWidget {
  final GetPostPreviewListUseCase _getPostPreviewListUseCase;
  const _PostPreviewList(this._getPostPreviewListUseCase);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostPreviewEntity>>(
        future: _getPostPreviewListUseCase.execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text(snapshot.data![0].text);
          } else {
            return const Text('Error');
          }
        });
  }
}

class _PostPreviewListByUser extends StatelessWidget {
  final GetPostPreviewListByUserUseCase _getPostPreviewListByUserUseCase;
  const _PostPreviewListByUser(this._getPostPreviewListByUserUseCase);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostPreviewEntity>>(
        future: _getPostPreviewListByUserUseCase
            .execute('60d0fe4f5311236168a109ca'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text(snapshot.data![0].text);
          } else {
            return const Text('Error');
          }
        });
  }
}

class _PostPreviewListByTag extends StatelessWidget {
  final GetPostPreviewListByTagUseCase _getPostPreviewListByTagUseCase;
  const _PostPreviewListByTag(this._getPostPreviewListByTagUseCase);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostPreviewEntity>>(
        future: _getPostPreviewListByTagUseCase.execute('canine'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text(snapshot.data![0].text);
          } else {
            return const Text('Error');
          }
        });
  }
}
