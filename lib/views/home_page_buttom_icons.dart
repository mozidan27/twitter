// import 'package:flutter/material.dart';
// import 'package:twitter/views/MainPage.dart';
// import 'package:twitter/views/pages/communities_page.dart';
// import 'package:twitter/views/pages/messages_page.dart';
// import 'package:twitter/views/pages/notification_page.dart';
// import 'package:twitter/views/pages/search_page.dart';

// class HomePageButtomIcons extends StatefulWidget {
//   const HomePageButtomIcons({super.key});

//   @override
//   State<HomePageButtomIcons> createState() => _HomePageButtomIconsState();
// }

// class _HomePageButtomIconsState extends State<HomePageButtomIcons> {
//   int _selectedIndex = 0;

//   void _navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _pages = [
//     const MainPage(),
//     const SearchPage(),
//     const CommunitiesPage(),
//     const NotificationPage(),
//     const MessagesPage()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           iconSize: 28,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           currentIndex: _selectedIndex,
//           onTap: _navigateBottomBar,
//           backgroundColor: Colors.black,
//           type: BottomNavigationBarType.fixed,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.people_outlined), label: ''),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.notifications_none), label: ''),
//             BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: ''),
//           ],
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.white,
//         ),
//         body: _pages[_selectedIndex],
//       ),
//     );
//   }
// }
