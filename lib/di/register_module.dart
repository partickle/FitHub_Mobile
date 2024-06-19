import 'package:fithub/di/dio_client/dio_client.dart';
import 'package:fithub/token/repository/token_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {
  @singleton
  Dio provideDio(TokenRepository tokenRepository) => DioClient.configurateDio(tokenRepository);
}
