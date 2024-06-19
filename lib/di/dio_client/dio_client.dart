import 'package:fithub/token/interseptor/jwt_interceptor.dart';
import 'package:fithub/token/repository/token_repository.dart';
import 'package:dio/dio.dart';
import 'package:fithub/res/constants/constants.dart';

abstract class DioClient {

  static Dio? _dio;

  static Dio configurateDio(TokenRepository tokenRepository) {
    if (_dio == null) {
      _dio = Dio();

      _dio!.options = BaseOptions(
        baseUrl: baseUrl,
        contentType: Headers.jsonContentType,
        receiveTimeout: timeout,
        connectTimeout: timeout,
        sendTimeout: timeout,
      );
      _dio!.interceptors.add(JWTInterceptor(_dio!, tokenRepository));

    }

    return _dio!;
  }

}