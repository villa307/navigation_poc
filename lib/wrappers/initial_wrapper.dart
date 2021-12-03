import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/routes.gr.dart';

class InitialWrapper extends StatefulWidget {
  const InitialWrapper({Key? key}) : super(key: key);

  @override
  _InitialWrapperState createState() => _InitialWrapperState();
}

class _InitialWrapperState extends State<InitialWrapper> {
  PageRouteInfo? _firstRoute;
  bool? _isLogged;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await _initBlocs();
    await _checkIfLogged();
  }

  Future<void> _initBlocs() async {
    print('KAPPA INIT BLOCS STARTED');
    await Future.delayed(Duration(seconds: 2));
    print('KAPPA INIT BLOCS FINISHED');
  }

  Future<void> _checkIfLogged() async {
    print('KAPPA AUTH STARTED');
    await Future.delayed(Duration(seconds: 2));
    if (mounted) {}
    print('KAPPA SetState 0');
    setState(() {
      // Change according to test, false to go to login and true to go to home
      _isLogged = true;
    });
    print('KAPPA AUTH FINISHED');
  }

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      onNavigate: (matches, initial) {
        if (matches.isNotEmpty && matches.first.path.isNotEmpty) {
          _firstRoute = matches.first.toPageRouteInfo();
        }
        matches.forEach((match) {
          print('KAPPA MATCH ${match.path} ${match.name} ${match.allSegments}');
        });
        // First navigation of this session?
        print('KAPPA INITIAL $initial');
        // It's logged, let's present Home
      },
      routes: (context) {
        return [
          // Still deciding if is logged
          InitialRoute(),
          if (_isLogged == false)
            // It's not logged, let's present login
            LoginRoute(
              onLogged: () {
                setState(() {
                  _isLogged = true;
                });
              },
            ),
          if (_isLogged == true)
            MainRouter(
              children: [
                HomeRoute(),
                ..._firstRoute?.initialChildren ?? [],
              ],
            ),
        ];
      },
    );
  }
}
