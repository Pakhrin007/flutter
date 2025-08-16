import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServices {
  final SupabaseClient _suppabase=Supabase.instance.client;


  // sign in with email and password

  Future<AuthResponse> signinWithEmailPassword(
    String Email,String Password
  )async{
    return await _suppabase.auth.signInWithPassword(password: Password,email: Email);
  }

  // sign up with email password and phone number

  Future<AuthResponse> Signup(String Email,String Password) async{
    return await _suppabase.auth.signUp(password: Password,email: Email);
  }

  // sign out

  Future<void>SignOut() async{
     await _suppabase.auth.signOut();

  }

  // get data

  String? getCurrentUserEmail(){
    final session=_suppabase.auth.currentSession;
    final user=session?.user;
    return user?.email;

  }
}
