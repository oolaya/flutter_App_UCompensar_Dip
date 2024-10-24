import 'package:dio/dio.dart';

class DumyApi<T> {
  var client = Dio();

  Future<List<T>> get(
      T Function(Map<String, dynamic> json) mapper, String subPath) async {
    final response = await client.get('https://dummyapi.io/data/v1/$subPath',
        options: Options(headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          'app-id': '624c9429450430b574dcf17c'
        }));

    if (response.statusCode == 200) {
      final body = (response.data as Map<String, dynamic>);
      final bodyFinal = body['data'];
      return (bodyFinal as List<dynamic>).map((e) => mapper(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
