import 'package:flutter/material.dart';

import 'package:twitter/views/following_page.dart';
import 'package:twitter/views/foryou_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/images/X_logo_2023_(white).png',
            height: 35,
          ),
          backgroundColor: const Color(0xff070707),
        ),
        body: Column(
          children: [
            TabBar(
              indicatorColor: const Color(0xff1d9bf0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              dividerColor: Colors.grey[900],
              dividerHeight: 1.3,
              tabs: const [
                Tab(
                  child: Text(
                    'For you',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    'Following',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(children: [ForYou(), Following()]),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: ''),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
