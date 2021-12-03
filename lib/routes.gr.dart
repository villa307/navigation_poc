// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'pages/events_page.dart' as _i6;
import 'pages/home_page.dart' as _i5;
import 'pages/initial_page.dart' as _i2;
import 'pages/login_page.dart' as _i3;
import 'wrappers/home_wrapper.dart' as _i4;
import 'wrappers/initial_wrapper.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    InitialWrapper.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InitialWrapper());
    },
    InitialRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.InitialPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LoginPage(key: args.key, onLogged: args.onLogged));
    },
    MainRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeWrapper());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    EventsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EventsPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(InitialWrapper.name, path: '/', children: [
          _i7.RouteConfig(InitialRoute.name,
              path: '', parent: InitialWrapper.name),
          _i7.RouteConfig(LoginRoute.name,
              path: 'login', parent: InitialWrapper.name),
          _i7.RouteConfig(MainRouter.name,
              path: 'home',
              parent: InitialWrapper.name,
              children: [
                _i7.RouteConfig(HomeRoute.name,
                    path: '', parent: MainRouter.name),
                _i7.RouteConfig(EventsRoute.name,
                    path: 'events', parent: MainRouter.name),
                _i7.RouteConfig('*#redirect',
                    path: '*',
                    parent: MainRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i7.RouteConfig('*#redirect',
              path: '*',
              parent: InitialWrapper.name,
              redirectTo: '',
              fullMatch: true)
        ])
      ];
}

/// generated route for [_i1.InitialWrapper]
class InitialWrapper extends _i7.PageRouteInfo<void> {
  const InitialWrapper({List<_i7.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'InitialWrapper';
}

/// generated route for [_i2.InitialPage]
class InitialRoute extends _i7.PageRouteInfo<void> {
  const InitialRoute() : super(name, path: '');

  static const String name = 'InitialRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i8.Key? key, required void Function() onLogged})
      : super(name,
            path: 'login', args: LoginRouteArgs(key: key, onLogged: onLogged));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogged});

  final _i8.Key? key;

  final void Function() onLogged;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogged: $onLogged}';
  }
}

/// generated route for [_i4.HomeWrapper]
class MainRouter extends _i7.PageRouteInfo<void> {
  const MainRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'MainRouter';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.EventsPage]
class EventsRoute extends _i7.PageRouteInfo<void> {
  const EventsRoute() : super(name, path: 'events');

  static const String name = 'EventsRoute';
}
