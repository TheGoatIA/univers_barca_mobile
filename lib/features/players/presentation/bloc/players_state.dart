part of 'players_bloc.dart';

enum PlayersStatus { initial, loading, success, failure }

class PlayersState extends Equatable {
  final PlayersStatus status;
  final List<Player> items;
  final String? errorMessage;

  const PlayersState({
    this.status = PlayersStatus.initial,
    this.items = const [],
    this.errorMessage,
  });

  PlayersState copyWith({PlayersStatus? status, List<Player>? items, String? errorMessage}) {
    return PlayersState(
      status: status ?? this.status,
      items: items ?? this.items,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  bool get isLoading => status == PlayersStatus.loading;
  bool get isFailure => status == PlayersStatus.failure;

  @override
  List<Object?> get props => [status, items, errorMessage];
}
