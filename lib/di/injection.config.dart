// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:chopper/chopper.dart' as _i31;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:univers_barca/core/network/network_info.dart' as _i1002;
import 'package:univers_barca/core/services/notification_service.dart' as _i904;
import 'package:univers_barca/di/register_module.dart' as _i711;
import 'package:univers_barca/features/account/data/datasources/account_remote_datasource.dart'
    as _i12;
import 'package:univers_barca/features/account/data/repositories/account_repository_impl.dart'
    as _i913;
import 'package:univers_barca/features/account/domain/repositories/account_repository.dart'
    as _i430;
import 'package:univers_barca/features/account/domain/usecases/delete_account_usecase.dart'
    as _i768;
import 'package:univers_barca/features/account/presentation/bloc/delete_account_bloc.dart'
    as _i286;
import 'package:univers_barca/features/players/data/datasources/players_remote_datasource.dart'
    as _i548;
import 'package:univers_barca/features/players/data/repositories/players_repository_impl.dart'
    as _i5;
import 'package:univers_barca/features/players/domain/repositories/players_repository.dart'
    as _i822;
import 'package:univers_barca/features/players/domain/usecases/get_players_usecase.dart'
    as _i851;
import 'package:univers_barca/features/players/presentation/bloc/players_bloc.dart'
    as _i417;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i904.NotificationService>(
      () => _i904.NotificationService(),
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i31.ChopperClient>(() => registerModule.chopperClient);
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
      () => registerModule.connectionChecker,
    );
    gh.lazySingleton<_i12.AccountRemoteDataSource>(
      () => _i12.AccountRemoteDataSource(gh<_i31.ChopperClient>()),
    );
    gh.lazySingleton<_i548.PlayersRemoteDataSource>(
      () => _i548.PlayersRemoteDataSource(gh<_i31.ChopperClient>()),
    );
    gh.lazySingleton<_i1002.NetworkInfo>(
      () => _i1002.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()),
    );
    gh.lazySingleton<_i430.AccountRepository>(
      () => _i913.AccountRepositoryImpl(
        gh<_i12.AccountRemoteDataSource>(),
        gh<_i1002.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i822.PlayersRepository>(
      () => _i5.PlayersRepositoryImpl(
        gh<_i548.PlayersRemoteDataSource>(),
        gh<_i1002.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i851.GetPlayersUseCase>(
      () => _i851.GetPlayersUseCase(gh<_i822.PlayersRepository>()),
    );
    gh.factory<_i417.PlayersBloc>(
      () => _i417.PlayersBloc(gh<_i851.GetPlayersUseCase>()),
    );
    gh.lazySingleton<_i768.DeleteAccountUseCase>(
      () => _i768.DeleteAccountUseCase(gh<_i430.AccountRepository>()),
    );
    gh.factory<_i286.DeleteAccountBloc>(
      () => _i286.DeleteAccountBloc(gh<_i768.DeleteAccountUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i711.RegisterModule {}
