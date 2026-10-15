import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:univers_barca/di/injection.dart';
import 'package:univers_barca/core/theme/app_theme.dart';
import 'package:univers_barca/routes/app_router.dart';
import 'package:univers_barca/l10n/app_localizations.dart';

// firebase_options.dart est généré par FlutterFire CLI (non versionné) — voir docs/DEPLOYMENT.md
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Chargement des variables d'environnement
  await dotenv.load(fileName: '.env');

  // Initialisation Firebase
  // À décommenter une fois Firebase configuré (voir issue « Configuration Firebase ») :
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };

  // Configuration de l'injection de dépendances
  await configureDependencies();

  // Initialisation des services globaux
  // À décommenter une fois Firebase configuré :
  // await getIt<NotificationService>().initialize();

  // Observateur BLoC global (debug / analytics)
  if (kDebugMode) {
    Bloc.observer = _AppBlocObserver();
  }

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Univers Barça',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

class _AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('[BLoC ERROR] ${bloc.runtimeType}: $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(
      '[BLoC] ${bloc.runtimeType}: ${transition.event.runtimeType} -> ${transition.nextState.runtimeType}',
    );
  }
}
