// Auth gate - this will continuously listen for auth state changes


// unauntheticated --> login page
// authenticated--> profile page


import 'package:flutter/material.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
  stream: Supabase.instance.client.auth.onAuthStateChange,
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final AuthState? authState = snapshot.data;
    final session = authState?.session;

    if (session != null) {
      return Homepage();
    } else {
      return Login();
    }
  },
);


  }
}