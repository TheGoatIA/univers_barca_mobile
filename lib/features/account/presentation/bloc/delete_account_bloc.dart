import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/core/error/failure.dart';
import 'package:univers_barca/features/account/domain/usecases/delete_account_usecase.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';

// Parcours D12 : avertissement -> mot de passe -> confirmation (+ délai de grâce de 30 jours).
@injectable
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final DeleteAccountUseCase _deleteAccount;

  DeleteAccountBloc(this._deleteAccount) : super(const DeleteAccountState()) {
    on<DeleteAccountPasswordChanged>(
      (e, emit) => emit(state.copyWith(password: e.password, clearFailure: true)),
    );
    on<DeleteAccountConfirmationChanged>(
      (e, emit) => emit(state.copyWith(confirmation: e.confirmation, clearFailure: true)),
    );
    on<DeleteAccountNextPressed>(_onNext);
    on<DeleteAccountBackPressed>(_onBack);
    on<DeleteAccountSubmitted>(_onSubmitted);
  }

  void _onNext(DeleteAccountNextPressed event, Emitter<DeleteAccountState> emit) {
    if (state.isSubmitting) return;
    switch (state.step) {
      case DeleteAccountStep.warning:
        emit(state.copyWith(step: DeleteAccountStep.password, clearFailure: true));
      case DeleteAccountStep.password when state.isPasswordValid:
        emit(state.copyWith(step: DeleteAccountStep.confirmation, clearFailure: true));
      default:
        break;
    }
  }

  void _onBack(DeleteAccountBackPressed event, Emitter<DeleteAccountState> emit) {
    if (state.isSubmitting) return;
    switch (state.step) {
      case DeleteAccountStep.confirmation:
        emit(state.copyWith(step: DeleteAccountStep.password, clearFailure: true));
      case DeleteAccountStep.password:
        emit(state.copyWith(step: DeleteAccountStep.warning, clearFailure: true));
      case DeleteAccountStep.warning:
        break;
    }
  }

  Future<void> _onSubmitted(DeleteAccountSubmitted event, Emitter<DeleteAccountState> emit) async {
    if (state.step != DeleteAccountStep.confirmation ||
        state.isSubmitting ||
        !state.isPasswordValid ||
        !state.isConfirmationValid) {
      return;
    }
    emit(state.copyWith(status: DeleteAccountStatus.submitting, clearFailure: true));
    final result = await _deleteAccount(password: state.password);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: DeleteAccountStatus.failure,
          failure: failure,
          // Mot de passe refusé : retour à l'étape 2 (compte intact).
          step: failure.code == 'INVALID_CREDENTIALS' ? DeleteAccountStep.password : state.step,
        ),
      ),
      (purgeAt) => emit(state.copyWith(status: DeleteAccountStatus.success, purgeAt: purgeAt)),
    );
  }
}
