import 'package:dio/dio.dart';
// import './../interceptor/interceptorDoi.ts';

class DioClient {
  static final DioClient _singleton = DioClient._internal();
  late Dio _dio;

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal() {
    _dio = Dio();
    _dio.options.baseUrl = 'https://dummyapi.io/data/v1/';
    _dio.options.connectTimeout = const Duration(seconds: 5000);
    _dio.options.receiveTimeout = const Duration(seconds: 3000);
    _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio => _dio;
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add any custom request logic here
    options.headers.addAll({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'app-id': '624c9429450430b574dcf17c',
    });
    super.onRequest(options, handler);
  }
}
