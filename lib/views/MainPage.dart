import 'package:flutter/material.dart';
import 'package:twitter/views/following_page.dart';
import 'package:twitter/views/foryou_page.dart';
import 'package:twitter/widgets/GNavigation_bar.dart';
import 'package:twitter/widgets/cusotm_floating_action_button.dart';
import 'package:twitter/widgets/tab_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
        floatingActionButton: const CustomFloatingActionButton(
          icon: Icons.add,
        ),
        bottomNavigationBar: const GNavBar(),
      ),
    );
  }
}
