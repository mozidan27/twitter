import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:twitter/views/MainPage.dart';
import 'package:twitter/views/pages/communities_page.dart';
import 'package:twitter/views/pages/messages_page.dart';
import 'package:twitter/views/pages/notification_page.dart';
import 'package:twitter/views/pages/search_page.dart';

class GNavBar extends StatefulWidget {
  const GNavBar({
    super.key,
  });

  @override
  State<GNavBar> createState() => _GNavBarState();
}

class _GNavBarState extends State<GNavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  final List<Widget> _pages = [
    const MainPage(),
    const SearchPage(),
    const CommunitiesPage(),
    const NotificationPage(),
    const MessagesPage()
  ];
  @override
  Widget build(BuildContext context) {
    return GNav(
      selectedIndex: _selectedIndex,
      onTabChange: (value) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return _pages[_selectedIndex = value];
            },
          ),
        );
      },
      activeColor: Colors.white,
      tabs: const [
        GButton(icon: Icons.home),
        GButton(icon: Icons.search),
        GButton(icon: Icons.people_outlined),
        GButton(icon: Icons.notifications_none),
        GButton(icon: Icons.mail_outline),
      ],
      color: Colors.white,
    );
  }
}
