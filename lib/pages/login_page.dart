import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
    required this.onLogged,
  }) : super(key: key);

  final VoidCallback onLogged;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('THIS IS THE LOGIN PAGE'),
            SizedBox(height: 250.0),
            TextButton(
              onPressed: widget.onLogged,
              child: Text('LOG IN'),
            ),
          ],
        ),
      ),
    );
  }
}
