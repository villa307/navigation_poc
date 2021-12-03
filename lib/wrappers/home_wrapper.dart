import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({
    Key? key,
  }) : super(key: key);

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
  Widget build(BuildContext context) => AutoRouter();
}
