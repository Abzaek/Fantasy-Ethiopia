// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:FantasyE/application/auth/auth_bloc.dart' as _i6;
import 'package:FantasyE/domain/auth/i_auth_facade.dart' as _i4;
import 'package:FantasyE/infrastructure/auth/api_client.dart' as _i3;
import 'package:FantasyE/infrastructure/auth/repository/auth_repository.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.factory<_i3.ApiClient>(() => _i3.ApiClient());
    gh.lazySingleton<_i4.IAuthFacade>(
        () => _i5.AuthRepository(apiClient: gh<_i3.ApiClient>()));
    gh.factory<_i6.SignupFormBloc>(
        () => _i6.SignupFormBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i6.LoginFormBloc>(
        () => _i6.LoginFormBloc(gh<_i4.IAuthFacade>()));
    return this;
  }
}