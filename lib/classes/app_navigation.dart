// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:twitter/views/MainPage.dart';
// import 'package:twitter/views/home_page.dart';

// class AppNavigation {
//   AppNavigation._();
//   static String initR = '/home';

//   // private navigators keys
//   static final _rootNavigatorKey = GlobalKey<NavigatorState>();
//   static final _rootNavigatorHome =
//       GlobalKey<NavigatorState>(debugLabel: 'shellHome');

//   // go router configuration
//   static final GoRouter router = GoRouter(
//     initialLocation: initR,
//     navigatorKey: _rootNavigatorKey,
//     routes: <RouteBase>[
//       //main wrapper route
//       StatefulShellRoute.indexedStack(
//           builder: (context, state, navigationShell) {
//             return const HomePage();
//           },
//           branches: <StatefulShellBranch>[
//             // brach home
//             StatefulShellBranch(
//               navigatorKey: _rootNavigatorHome,
//               routes: [
//                 GoRoute(
//                   path: '/home',
//                   name: 'home',
//                   builder: (context, state) {
//                     return MainPage(
//                       key: state.pageKey,
//                     );
//                   },
//                 ),
//               ],
//             )
//           ]),
//     ],
//   );
// }
