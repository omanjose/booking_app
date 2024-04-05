import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/profile_screen.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My tickets'),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'Search',
              activeIcon: Icon(
                Icons.search_sharp,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.grey,
              ),
              label: 'Ticket',
              activeIcon: Icon(
                Icons.airplane_ticket_sharp,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person_2_sharp,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
