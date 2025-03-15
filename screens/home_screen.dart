import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, ${user.email ?? 'Guest'}')),
      body: Center(
        child: Text('Hello, ${user.email ?? 'Guest'}'),
      ),
    );
  }
}
