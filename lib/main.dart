import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:halo_smoothie/auth_service.dart';
import 'package:halo_smoothie/home_screen.dart';
import 'package:halo_smoothie/login_creen.dart';
import 'package:halo_smoothie/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HaloSmoothieApp());
}

class HaloSmoothieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<GoogleSignInProvider>(create: (_) => GoogleSignInProvider())
      ],
      child: MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: AuthService().handleAuthState(),
      ),
    );
  }
}

class ControllerLogin extends StatelessWidget {
  const ControllerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Smoothie',
      home: MainApp(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    HomePageV2(),
    Text('Search'),
    Text('Add'),
    Text('Notification'),
    Center(
        child: ElevatedButton(
      onPressed: AuthService().signOut(),
      child: Text('Sign Out'),
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  width: 60,
                  height: 30,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15)),
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
