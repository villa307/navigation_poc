import 'package:auto_route/auto_route.dart';
import 'package:navigation/pages/events_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/initial_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/wrappers/home_wrapper.dart';
import 'package:navigation/wrappers/initial_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      page: InitialWrapper, // Core Blocs Initializations
      children: [
        AutoRoute(
          path: '',
          page: InitialPage,
        ),
        AutoRoute(
          path: 'login',
          page: LoginPage,
        ),
        AutoRoute(
          path: 'home',
          name: 'MainRouter',
          page: HomeWrapper, // Home Blocs Initializations
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            AutoRoute(
              path: 'events',
              page: EventsPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $AppRouter {}
