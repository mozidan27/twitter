// import 'package:flutter/material.dart';

// class SpacedStackedContainers extends StatelessWidget {
//   const SpacedStackedContainers({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Container(
//             height: 100,
//             color: Colors.red,
//             // Add your container content if any
//           ),
//           const SizedBox(
//               height:
//                   20), // This SizedBox provides space between the containers
//           Container(
//             height: 100,
//             color: Colors.green,
//             // Add your container content if any
//           ),
//           const SizedBox(
//               height: 20), // Adjust the height for more or less space
//           Container(
//             height: 100,
//             color: Colors.blue,
//             // Add your container content if any
//           ),
//           // Add more containers and SizedBoxes as needed
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:twitter/views/following_page.dart';
// import 'package:twitter/views/foryou_page.dart';
// import 'package:twitter/views/pages/communities_page.dart';
// import 'package:twitter/views/pages/messages_page.dart';
// import 'package:twitter/views/pages/notification_page.dart';
// import 'package:twitter/views/pages/search_page.dart';
// import 'package:twitter/widgets/cusotm_floating_action_button.dart';
// import 'package:twitter/widgets/tab_bar_widget.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   void _navigateBottomBar(int value) {
//     setState(() {
//       _selectedIndex = value;
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
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               title: Image.asset(
//                 'assets/images/X_logo_2023_(white).png',
//                 height: 32,
//               ),
//               backgroundColor: const Color(0xff070707),
//               centerTitle: true,
//             ),
//             SliverFillRemaining(
//               child: Column(
//                 children: [
//                   const TabBarWidget(),
//                   const Expanded(
//                     child: TabBarView(children: [ForYou(), Following()]),
//                   ),
//                   Divider(
//                     thickness: 0.4,
//                     height: 1,
//                     color: Colors.grey[700],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: const CustomFloatingActionButton(
//           icon: Icons.add,
//         ),
//         bottomNavigationBar: GNav(
//           selectedIndex: _selectedIndex,
//           onTabChange: (value) {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) {
//                   return _pages[_selectedIndex = value];
//                 },
//               ),
//             );
//           },
//           activeColor: Colors.red,
//           tabs: const [
//             GButton(icon: Icons.home),
//             GButton(icon: Icons.search),
//             GButton(icon: Icons.people_outlined),
//             GButton(icon: Icons.notifications_none),
//             GButton(icon: Icons.mail_outline),
//           ],
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
