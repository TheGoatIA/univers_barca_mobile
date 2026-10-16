part of 'delete_account_bloc.dart';

/// Les 3 étapes de D12 : avertissement, ressaisie du mot de passe, confirmation.
enum DeleteAccountStep { warning, password, confirmation }

enum DeleteAccountStatus { editing, submitting, success, failure }

class DeleteAccountState extends Equatable {
  final DeleteAccountStep step;
  final DeleteAccountStatus status;
  final String password;
  final String confirmation;
  final DateTime? purgeAt;
  final Failure? failure;

  const DeleteAccountState({
    this.step = DeleteAccountStep.warning,
    this.status = DeleteAccountStatus.editing,
    this.password = '',
    this.confirmation = '',
    this.purgeAt,
    this.failure,
  });

  bool get isPasswordValid => password.isNotEmpty;

  /// Saisie insensible à la casse et aux espaces de bord.
  bool get isConfirmationValid =>
      confirmation.trim().toUpperCase() == DeleteAccountUseCase.confirmationWord;

  bool get isSubmitting => status == DeleteAccountStatus.submitting;

  DeleteAccountState copyWith({
    DeleteAccountStep? step,
    DeleteAccountStatus? status,
    String? password,
    String? confirmation,
    DateTime? purgeAt,
    Failure? failure,
    bool clearFailure = false,
  }) {
    return DeleteAccountState(
      step: step ?? this.step,
      status: status ?? this.status,
      password: password ?? this.password,
      confirmation: confirmation ?? this.confirmation,
      purgeAt: purgeAt ?? this.purgeAt,
      failure: clearFailure ? null : failure ?? this.failure,
    );
  }

  @override
  List<Object?> get props => [step, status, password, confirmation, purgeAt, failure];
}
