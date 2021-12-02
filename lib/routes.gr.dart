// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'pages/events_page.dart' as _i4;
import 'pages/home_page.dart' as _i3;
import 'pages/initial_page.dart' as _i1;
import 'pages/login_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    InitialWrapper.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InitialWrapper());
    },
    InitialRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InitialPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, onLogged: args.onLogged));
    },
    HomeWrapper.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    EventsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EventsPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(InitialWrapper.name, path: '/', children: [
          _i5.RouteConfig(InitialRoute.name,
              path: '', parent: InitialWrapper.name),
          _i5.RouteConfig(LoginRoute.name,
              path: 'login', parent: InitialWrapper.name),
          _i5.RouteConfig(HomeWrapper.name,
              path: 'home',
              parent: InitialWrapper.name,
              children: [
                _i5.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeWrapper.name),
                _i5.RouteConfig(EventsRoute.name,
                    path: 'events', parent: HomeWrapper.name)
              ]),
          _i5.RouteConfig('*#redirect',
              path: '*',
              parent: InitialWrapper.name,
              redirectTo: '',
              fullMatch: true)
        ])
      ];
}

/// generated route for [_i1.InitialWrapper]
class InitialWrapper extends _i5.PageRouteInfo<void> {
  const InitialWrapper({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'InitialWrapper';
}

/// generated route for [_i1.InitialPage]
class InitialRoute extends _i5.PageRouteInfo<void> {
  const InitialRoute() : super(name, path: '');

  static const String name = 'InitialRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key, required void Function() onLogged})
      : super(name,
            path: 'login', args: LoginRouteArgs(key: key, onLogged: onLogged));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogged});

  final _i6.Key? key;

  final void Function() onLogged;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogged: $onLogged}';
  }
}

/// generated route for [_i3.HomeWrapper]
class HomeWrapper extends _i5.PageRouteInfo<void> {
  const HomeWrapper({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeWrapper';
}

/// generated route for [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i4.EventsPage]
class EventsRoute extends _i5.PageRouteInfo<void> {
  const EventsRoute() : super(name, path: 'events');

  static const String name = 'EventsRoute';
}
