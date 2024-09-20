import 'package:flutter/material.dart';

class P4 extends StatefulWidget {
  const P4({super.key});

  @override
  State<P4> createState() => _P4State();
}

class _P4State extends State<P4> {
  int selectedIndex = 0;

  // List of widgets to display for each tab
  List<Widget> pages = <Widget>[
    Text("Home page"),
    Text("Search page"),
    Text("Profile page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
