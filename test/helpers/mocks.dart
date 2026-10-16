import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:univers_barca/core/network/network_info.dart';
import 'package:univers_barca/features/account/data/datasources/account_remote_datasource.dart';
import 'package:univers_barca/features/account/domain/repositories/account_repository.dart';
import 'package:univers_barca/features/account/domain/usecases/delete_account_usecase.dart';
import 'package:univers_barca/features/players/data/datasources/players_remote_datasource.dart';
import 'package:univers_barca/features/players/domain/repositories/players_repository.dart';
import 'package:univers_barca/features/players/domain/usecases/get_players_usecase.dart';
import 'package:univers_barca/features/players/presentation/bloc/players_bloc.dart';

// Mocks centralisés — à importer dans les tests.
class MockPlayersRepository extends Mock implements PlayersRepository {}

class MockPlayersRemoteDataSource extends Mock implements PlayersRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

class MockGetPlayersUseCase extends Mock implements GetPlayersUseCase {}

class MockPlayersBloc extends MockBloc<PlayersEvent, PlayersState> implements PlayersBloc {}

class MockAccountRepository extends Mock implements AccountRepository {}

class MockAccountRemoteDataSource extends Mock implements AccountRemoteDataSource {}

class MockDeleteAccountUseCase extends Mock implements DeleteAccountUseCase {}
