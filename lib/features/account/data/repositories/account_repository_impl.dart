import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/core/network/network_info.dart';
import 'package:univers_barca/features/account/data/datasources/account_remote_datasource.dart';
import 'package:univers_barca/features/account/domain/repositories/account_repository.dart';

@LazySingleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  final AccountRemoteDataSource _remote;
  final NetworkInfo _networkInfo;

  AccountRepositoryImpl(this._remote, this._networkInfo);

  @override
  Future<Either<Failure, DateTime>> deleteAccount({
    required String password,
    required String confirmation,
  }) async {
    if (!await _networkInfo.isConnected) {
      return left(const NetworkFailure('Pas de connexion internet'));
    }
    try {
      return right(await _remote.deleteAccount(password: password, confirmation: confirmation));
    } on AccountApiException catch (e) {
      return left(switch (e.statusCode) {
        401 => const AuthFailure('Mot de passe invalide', code: 'INVALID_CREDENTIALS'),
        422 => const ValidationFailure('Confirmation inexacte', code: 'VALIDATION_ERROR'),
        429 => const ServerFailure('Trop de tentatives', code: 'RATE_LIMITED'),
        _ => ServerFailure(e.toString(), code: e.code),
      });
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
