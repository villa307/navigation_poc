import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EVENTS PAGE'),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          children: [
            Text('THIS IS THE EVENTS PAGE'),
          ],
        ),
      ),
    );
  }
}
