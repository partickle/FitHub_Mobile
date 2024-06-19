// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/registration/data/repository/auth_repository.dart' as _i6;
import '../features/registration/data/service/auth_service.dart' as _i5;
import '../token/repository/token_repository.dart' as _i3;
import 'register_module.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singletonAsync<_i3.TokenRepository>(() {
      final i = _i3.TokenRepository(useCaching: gh<bool>());
      return i.initTokens().then((_) => i);
    });
    gh.singletonAsync<_i4.Dio>(() async =>
        registerModule.provideDio(await getAsync<_i3.TokenRepository>()));
    gh.factoryAsync<_i5.AuthService>(
        () async => _i5.AuthService(await getAsync<_i4.Dio>()));
    gh.singletonAsync<_i6.AuthRepository>(
        () async => _i6.AuthRepository(await getAsync<_i5.AuthService>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
