import 'package:dio/dio.dart';

Dio buildDioClient() {
  final Dio dio = Dio();

  dio.options.baseUrl = 'https://reqres.in/';

  dio.interceptors.addAll(
    <Interceptor>[
      LogInterceptor(),
    ],
  );

  return dio;
}
