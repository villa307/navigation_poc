import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/routes.gr.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await _initHomeBlocs();
  }

  Future<void> _initHomeBlocs() async {
    print('KAPPA INIT HOME BLOCS STARTED');
    await Future.delayed(Duration(seconds: 2));
    print('KAPPA INIT HOME BLOCS FINISHED');
  }

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME PAGE'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text('THIS IS THE HOME PAGE'),
            SizedBox(height: 250.0),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  EventsRoute(),
                );
              },
              child: Text('GO TO EVENTS'),
            ),
          ],
        ),
      ),
    );
  }
}
