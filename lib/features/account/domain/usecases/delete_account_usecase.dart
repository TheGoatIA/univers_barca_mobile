import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/account/domain/repositories/account_repository.dart';

// D12 : suppression de compte avec délai de grâce de 30 jours (annulable par reconnexion).
@lazySingleton
class DeleteAccountUseCase {
  /// Mot de confirmation exigé par l'API (`DELETE /users/me`).
  static const confirmationWord = 'SUPPRIMER';
  static const gracePeriodDays = 30;

  final AccountRepository _repository;

  DeleteAccountUseCase(this._repository);

  Future<Either<Failure, DateTime>> call({required String password}) =>
      _repository.deleteAccount(password: password, confirmation: confirmationWord);
}
