import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:univers_barca/core/constants/route_constants.dart';
import 'package:univers_barca/features/players/presentation/pages/players_page.dart';

// Rôle : Configuration centralisée de la navigation avec GoRouter.
// Dépendances : go_router, flutter_bloc
// Pour ajouter une route : ajouter un GoRoute dans la liste routes.

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RouteConstants.splash,
  debugLogDiagnostics: true,
  redirect: (context, state) {
    // Garde d'authentification à brancher avec l'AuthBloc (issue « Navigation et gardes ») :
    // final authState = context.read<AuthBloc>().state;
    // final isLoggedIn = authState.status == AuthStatus.authenticated;
    // final isGoingToLogin = state.matchedLocation == RouteConstants.login;
    // if (!isLoggedIn && !isGoingToLogin) return RouteConstants.login;
    return null;
  },
  routes: [
    GoRoute(path: RouteConstants.splash, builder: (context, state) => const _SplashPage()),
    GoRoute(
      path: RouteConstants.login,
      builder: (context, state) => const _PlaceholderPage(title: 'Connexion'),
    ),
    GoRoute(path: RouteConstants.players, builder: (context, state) => const PlayersPage()),
  ],
);

class _SplashPage extends StatefulWidget {
  const _SplashPage();

  @override
  State<_SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<_SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) context.go(RouteConstants.players);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shield_outlined, size: 80),
            const SizedBox(height: 16),
            Text('UNIVERS BARÇA', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  final String title;
  const _PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title — Page à implémenter')),
    );
  }
}
