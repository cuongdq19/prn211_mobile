import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Custom',
      style: optionStyle,
    ),
    Text(
      'Notifcation',
      style: optionStyle,
    ),
    Text(
      'Index 4: Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            //backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
            //backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
            //backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
            //backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            //backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[300],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
