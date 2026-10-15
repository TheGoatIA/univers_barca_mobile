import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:univers_barca/features/players/domain/entities/player.dart';
import 'package:univers_barca/features/players/domain/usecases/get_players_usecase.dart';

part 'players_event.dart';
part 'players_state.dart';

// Pattern : Event -> BLoC -> State -> UI
@injectable
class PlayersBloc extends Bloc<PlayersEvent, PlayersState> {
  final GetPlayersUseCase _getPlayers;

  PlayersBloc(this._getPlayers) : super(const PlayersState()) {
    on<PlayersRequested>(_onRequested);
    on<PlayersRefreshRequested>((event, emit) => _onRequested(const PlayersRequested(), emit));
  }

  Future<void> _onRequested(PlayersRequested event, Emitter<PlayersState> emit) async {
    emit(state.copyWith(status: PlayersStatus.loading));
    final result = await _getPlayers();
    result.fold(
      (failure) =>
          emit(state.copyWith(status: PlayersStatus.failure, errorMessage: failure.message)),
      (items) => emit(state.copyWith(status: PlayersStatus.success, items: items)),
    );
  }
}
