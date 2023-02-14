import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:halo_smoothie/auth_service.dart';
import 'package:halo_smoothie/home_screen.dart';
import 'package:halo_smoothie/main.dart';
import 'package:halo_smoothie/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  'Halo Smoothie',
                  style: TextStyle(
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Image.asset('assets/images/intro.png'),
                Text(
                  'Welcome to Halo Smoothie',
                  style: TextStyle(
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(height: 20),
                Container(
                  width: screenWidth * .75,
                  child: Text(
                    "Discover a variety of juice recipes suitable for everyone's health and diversify your menu",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Karla'),
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // final provider = Provider.of<GoogleSignInProvider>(
                          //     context,
                          //     listen: false);
                          // provider.googleLogin();
                          AuthService().signInWithGoogle();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Spacer(),
                            Image.asset('assets/images/google.png',
                                width: 20, height: 20),
                            SizedBox(width: 10),
                            Text(
                              'Login With Google Account',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.7)),
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Spacer(),
                            Image.asset('assets/images/facebook.png',
                                width: 20, height: 20),
                            SizedBox(width: 10),
                            Text(
                              'Login With Facebook Account',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.7)),
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Continue as a Guest'))
                  ],
                ),
              ],
            ),
            Positioned(
              top: -20,
              left: -40,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 149, 180, 204))),
            ),
            Positioned(
              top: -80,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 190, 210, 225))),
            ),
          ]),
        ),
      ),
    );
  }
}
