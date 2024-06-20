import 'package:dio/dio.dart';
import 'package:fithub/token/domain/token_refresh_request.dart';
import 'package:fithub/token/repository/token_repository.dart';

class JWTInterceptor extends QueuedInterceptor {
  final Dio _dio;
  final TokenRepository tokenRepository;

  JWTInterceptor(this._dio, this.tokenRepository);

  String? get _accessToken => tokenRepository.accessToken;

  String? get _refreshToken => tokenRepository.refreshToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_accessToken != null &&
        options.path != '/auth/api/token/' &&
        options.path != '/auth/api/token/refresh/' &&
        options.path != '/auth/login/' &&
        options.path != '/auth/register/' &&
        options.path != '/auth/reset-password/' &&
        options.path != '/auth/send-activation/' &&
        options.path != '/auth/verify/') {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path.contains('/auth/register/') ||
        response.requestOptions.path == '/auth/login/') {
      final accessToken = response.data['access'] as String?;
      final refreshToken = response.data['refresh'] as String?;

      if (accessToken != null && refreshToken != null) {
        tokenRepository.saveTokens(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );
      }
    }

    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if ((err.response?.statusCode == 403 || err.response?.statusCode == 401) &&
        (err.requestOptions.path != '/auth/register/' &&
            err.requestOptions.path != '/auth/login/')) {
      await _refresh();
      if (tokenRepository.auth) {
        final response = await _retry(err.requestOptions);
        handler.resolve(response);
      } else {
        handler.next(err);
      }
    } else {
      handler.next(err);
    }
  }

  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return;
    }

    try {
      final response = await _dio.post(
        '/auth/api/token/refresh/',
        data: TokenRefreshRequest(
          refresh: _refreshToken,
        ),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final accessToken = response.data['access'] as String?;
        final refreshToken = response.data['refresh'] as String?;

        if (accessToken != null && refreshToken != null) {
          tokenRepository.saveTokens(
            accessToken: accessToken,
            refreshToken: refreshToken,
          );
        } else {
          tokenRepository.deleteTokens();
        }
      }
    } catch (e) {
      tokenRepository.deleteTokens();
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
