import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:univers_barca/core/widgets/app_error_view.dart';
import 'package:univers_barca/core/widgets/app_loading.dart';
import 'package:univers_barca/di/injection.dart';
import 'package:univers_barca/features/players/presentation/bloc/players_bloc.dart';

// Page de référence de l'architecture : liste des joueurs (BLoC + Either + Chopper).
class PlayersPage extends StatelessWidget {
  final PlayersBloc? bloc;

  const PlayersPage({super.key, this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlayersBloc>(
      create: (_) => (bloc ?? getIt<PlayersBloc>())..add(const PlayersRequested()),
      child: const _PlayersView(),
    );
  }
}

class _PlayersView extends StatelessWidget {
  const _PlayersView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Effectif'),
        actions: [
          IconButton(
            tooltip: 'Actualiser',
            icon: const Icon(Icons.refresh),
            onPressed: () => context.read<PlayersBloc>().add(const PlayersRefreshRequested()),
          ),
        ],
      ),
      body: BlocBuilder<PlayersBloc, PlayersState>(
        builder: (context, state) {
          if (state.isLoading || state.status == PlayersStatus.initial) return const AppLoading();
          if (state.isFailure) {
            return AppErrorView(
              message: state.errorMessage ?? 'Une erreur est survenue',
              onRetry: () => context.read<PlayersBloc>().add(const PlayersRequested()),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: state.items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final p = state.items[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('${p.shirtNumber ?? '–'}')),
                  title: Text(p.fullName),
                  subtitle: Text([p.position, p.nationality].whereType<String>().join(' · ')),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
