part of 'players_bloc.dart';

abstract class PlayersEvent extends Equatable {
  const PlayersEvent();

  @override
  List<Object?> get props => [];
}

class PlayersRequested extends PlayersEvent {
  const PlayersRequested();
}

class PlayersRefreshRequested extends PlayersEvent {
  const PlayersRefreshRequested();
}
