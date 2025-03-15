import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authwrapper.dart'; // Importing AuthWrapper
// This should also be correct

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthWrapper(), // AuthWrapper is responsible for handling auth state
    );
  }
}
