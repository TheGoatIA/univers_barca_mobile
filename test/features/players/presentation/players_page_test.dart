import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:univers_barca/features/players/presentation/bloc/players_bloc.dart';
import 'package:univers_barca/features/players/presentation/pages/players_page.dart';

import '../../../helpers/mocks.dart';
import '../../../helpers/test_data.dart';

void main() {
  late MockPlayersBloc bloc;

  setUp(() => bloc = MockPlayersBloc());

  Future<void> pump(WidgetTester tester, PlayersState state) async {
    whenListen(bloc, const Stream<PlayersState>.empty(), initialState: state);
    await tester.pumpWidget(MaterialApp(home: PlayersPage(bloc: bloc)));
  }

  testWidgets('affiche les joueurs', (tester) async {
    await pump(tester, const PlayersState(status: PlayersStatus.success, items: TestData.tPlayers));
    expect(find.text('Lamine Yamal'), findsOneWidget);
    expect(find.text('Pedri'), findsOneWidget);
  });

  testWidgets('affiche un message d\'erreur', (tester) async {
    await pump(tester, const PlayersState(status: PlayersStatus.failure, errorMessage: 'Oups'));
    expect(find.text('Oups'), findsOneWidget);
  });
}
