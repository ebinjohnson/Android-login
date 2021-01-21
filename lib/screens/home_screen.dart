import 'dart:ui';

import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home Screen'),
        actions: <Widget>[
          IconButton(
              tooltip: 'Logout',
              icon: Icon(
                Icons.logout,
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              })
        ],
      ),
      body: Center(
        child: Text(
          'This is my home screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
