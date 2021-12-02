import 'package:auto_route/auto_route.dart';
import 'package:navigation/pages/events_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/initial_page.dart';
import 'package:navigation/pages/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      page: InitialWrapper,
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
          page: HomeWrapper,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            AutoRoute(
              path: 'events',
              page: EventsPage,
            ),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $AppRouter {}
