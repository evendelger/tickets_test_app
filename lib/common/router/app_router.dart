import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/scaffolds/home_scaffold.dart';
import 'package:tickets_test_app/features/search_by_country/search_by_country_page.dart';
import 'package:tickets_test_app/features/tickets/tickets_page.dart';
import 'package:tickets_test_app/features/home/home_page.dart';
import 'package:tickets_test_app/features/briefly/briefly_page.dart';
import 'package:tickets_test_app/features/hotels/hotels_page.dart';
import 'package:tickets_test_app/features/profile/profile_page.dart';
import 'package:tickets_test_app/features/subscriptions/subscriptions_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final class AppRouter {
  GoRouter get router => _router;

  final _router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => HomeScaffold(child: child),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: 'home',
                builder: (context, state) => const HomePage(),
                routes: [
                  GoRoute(
                    path: 'search_by_country',
                    name: 'search_by_country',
                    builder: (context, state) {
                      final extra = state.extra as Map<String, dynamic>;
                      return SearchByCountryPage(
                        departurePlace: extra['departurePlace'] as String,
                        arrivalPlace: extra['arrivalPlace'] as String,
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'tickets',
                        name: 'tickets',
                        builder: (context, state) {
                          final extra = state.extra as Map<String, dynamic>;
                          return TicketsPage(
                            departurePlace: extra['departurePlace'] as String,
                            arrivalPlace: extra['arrivalPlace'] as String,
                            arrivalDate: extra['arrivalDate'] as DateTime,
                          );
                        },
                      ),
                    ],
                  ),
                ],
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
