import 'package:flutter/material.dart';
import 'package:ticket_booking/Screen%20Page/main_home.dart';
import 'package:ticket_booking/Screen%20Page/select_launch.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  _ButtonNavBarState createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    MainHomePage(),
    SelectLaunch(),
    OfferPage(),
    InboxPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF26457C),

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Update selected index
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/home.png')),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Bookings.png')),
              label: 'Booking'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Offer.png')),
              label: 'Offer'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Inbox.png')),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/user.png')),
              label: 'Profile'),
        ],
      ),
    );
  }
}

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Offer Page'));
  }
}

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Inbox Page'));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Page'));
  }
}
