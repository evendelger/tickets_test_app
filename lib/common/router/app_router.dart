import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/scaffolds/home_scaffold.dart';
import 'package:tickets_test_app/features/air_tickets/ait_tickets_page.dart';
import 'package:tickets_test_app/features/briefly/briefly_page.dart';
import 'package:tickets_test_app/features/hotels/hotels_page.dart';
import 'package:tickets_test_app/features/profile/profile_page.dart';
import 'package:tickets_test_app/features/subscriptions/subscriptions_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final class AppRouter {
  GoRouter get router => _router;

  final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/air_tickets',
    routes: [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => HomeScaffold(child: child),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/air_tickets',
                name: 'air_tickets',
                builder: (context, state) => const AirTicketsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/hotels',
                name: 'hotels',
                builder: (context, state) => const HotelsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/briefly',
                name: 'briefly',
                builder: (context, state) => const BrieflyPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/subscriptions',
                name: 'subscriptions',
                builder: (context, state) => const SubscriptionsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: 'profile',
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
