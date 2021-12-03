import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/routes.gr.dart';

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
