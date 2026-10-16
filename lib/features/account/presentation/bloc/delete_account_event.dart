part of 'delete_account_bloc.dart';

sealed class DeleteAccountEvent extends Equatable {
  const DeleteAccountEvent();

  @override
  List<Object?> get props => [];
}

class DeleteAccountNextPressed extends DeleteAccountEvent {
  const DeleteAccountNextPressed();
}

class DeleteAccountBackPressed extends DeleteAccountEvent {
  const DeleteAccountBackPressed();
}

class DeleteAccountPasswordChanged extends DeleteAccountEvent {
  final String password;
  const DeleteAccountPasswordChanged(this.password);

  @override
  List<Object?> get props => [password];
}

class DeleteAccountConfirmationChanged extends DeleteAccountEvent {
  final String confirmation;
  const DeleteAccountConfirmationChanged(this.confirmation);

  @override
  List<Object?> get props => [confirmation];
}

class DeleteAccountSubmitted extends DeleteAccountEvent {
  const DeleteAccountSubmitted();
}
