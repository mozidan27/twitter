import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:twitter/views/following_page.dart';
import 'package:twitter/views/foryou_page.dart';
import 'package:twitter/views/pages/communities_page.dart';
import 'package:twitter/views/pages/messages_page.dart';
import 'package:twitter/views/pages/notification_page.dart';
import 'package:twitter/views/pages/search_page.dart';
import 'package:twitter/widgets/tab_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Image.asset(
                'assets/images/X_logo_2023_(white).png',
                height: 32,
              ),
              backgroundColor: const Color(0xff070707),
              centerTitle: true,
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  const TabBarWidget(),
                  const Expanded(
                    child: TabBarView(children: [ForYou(), Following()]),
                  ),
                  Divider(
                    thickness: 0.4,
                    height: 1,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: GNav(
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
          activeColor: Colors.red,
          tabs: const [
            GButton(icon: Icons.home),
            GButton(icon: Icons.search),
            GButton(icon: Icons.people_outlined),
            GButton(icon: Icons.notifications_none),
            GButton(icon: Icons.mail_outline),
          ],
          color: Colors.white,
        ),
      ),
    );
  }
}
