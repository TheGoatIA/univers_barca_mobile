import 'package:fpdart/fpdart.dart';
import 'package:univers_barca/core/error/failure.dart';

// Rôle : contrat du compte utilisateur (RGPD). Implémenté dans la couche data.
abstract class AccountRepository {
  /// Planifie la suppression du compte (délai de grâce) ; retourne la date de purge définitive.
  Future<Either<Failure, DateTime>> deleteAccount({
    required String password,
    required String confirmation,
  });
}
