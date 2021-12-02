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
          print(
            'KAPPA FIRST ROUTE ${_firstRoute?.fullPath} ${matches.first.path}',
          );
        }

        matches.forEach((match) {
          print('KAPPA MATCH ${match.path} ${match.name} ${match.allSegments}');
        });
        print('KAPPA INITIAL $initial');
      },
      routes: (context) {
        print('KAPPA ROUTES');
        return [
          InitialRoute(),
          if (_isLogged == false)
            LoginRoute(
              onLogged: () {
                setState(() {
                  _isLogged = true;
                });
              },
            ),
          if (_isLogged == true) _firstRoute ?? HomeWrapper(),
        ];
      },
    );
  }
}

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
