import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FacebookApp(),
    );
  }
}

class FacebookApp extends StatefulWidget {
  const FacebookApp();

  @override
  _FacebookAppState createState() => _FacebookAppState();
}

class _FacebookAppState extends State<FacebookApp> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    Center(
      child: Text(
        "Home Page",
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    Center(
      child: Text(
        "Search Page",
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
    ),
    Center(
      child: Text(
        "Profile Page",
        style: TextStyle(
          fontSize: 40.0,
        ),
      ),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF3b5998),
              ),
              child: Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Add functionality for Home option
              },
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.account_circle),
              onTap: () {
                // Add functionality for Profile option
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                // Add functionality for Settings option
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF3b5998),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Open the drawer on icon tap
              },
            );
          },
        ),
        title: const Text(
          'Facebook',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Billabong',
            fontSize: 32.0,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // Add your functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Add your functionality here
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xFF3b5998),
        fixedColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
