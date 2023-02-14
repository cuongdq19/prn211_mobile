import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:halo_smoothie/login_creen.dart';
import 'package:halo_smoothie/main.dart';
import 'package:http/io_client.dart';

class AuthService {
  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return Center(child: CircularProgressIndicator());
        // } else
        if (snapshot.hasData) {
          return MainApp();
        } else if (snapshot.hasError) {
          return Center(child: Text('Some thing went wrong '));
        } else {
          return LoginPage();
        }
      },
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn(scopes: <String>['email']).signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    var client = new IOClient(
        new HttpClient()..badCertificateCallback = (cert, host, port) => true);
    var response = await client.post(
      Uri.https(
        "10.0.2.2:7237",
        "/api/auth/customers",
      ),
      headers: {"Authorization": "Bearer ${googleAuth?.idToken}"},
    );

    print(response.body);

    print(FirebaseAuth.instance.currentUser!.displayName);
    print(FirebaseAuth.instance.currentUser!.email);
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
