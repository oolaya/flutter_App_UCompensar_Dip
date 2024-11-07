import 'package:flutter_app_ucompensar_dip/infrastructure/http/DioInstance/DioClient.dart';

class DumyApi<T> {
  var client = DioClient().dio;

  Future<List<T>> get(
      T Function(Map<String, dynamic> json) mapper, String subPath) async {
    final response = await client.get(subPath);
    if (response.statusCode == 200) {
      final body = (response.data as Map<String, dynamic>);
      final bodyFinal = body['data'];
      return (bodyFinal as List<dynamic>).map((e) => mapper(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<T> getById(
      T Function(Map<String, dynamic> json) mapper, String subPath) async {
    final response = await client.get(subPath);
    if (response.statusCode == 200) {
      final body = (response.data as Map<String, dynamic>);
      final bodyFinal = mapper(body); //(body as dynamic).map((e) => mapper(e));
      return bodyFinal;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
