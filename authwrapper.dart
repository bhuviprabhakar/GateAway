import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'authscreen.dart'; // Import the AuthScreen

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance
          .authStateChanges(), // Firebase auth state stream
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show loading indicator while waiting
        } else if (snapshot.hasError) {
          return Center(
              child: Text('Error: ${snapshot.error}')); // Handle error
        } else if (snapshot.hasData) {
          return HomeScreen(
              user: snapshot.data!); // If user is logged in, go to HomeScreen
        } else {
          return AuthScreen(); // If user is not logged in, show the login screen
        }
      },
    );
  }
}
