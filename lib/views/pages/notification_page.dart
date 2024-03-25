import 'package:flutter/material.dart';
import 'package:twitter/widgets/cusotm_floating_action_button.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              leading: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ))
              ],
              backgroundColor: const Color(0xff070707),
              expandedHeight: 50,
              centerTitle: true,
              title: const Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SliverToBoxAdapter(
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      automaticIndicatorColorAdjustment: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[800],
                      indicatorColor: const Color(0xff1d9bf0),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 5,
                      dividerColor: const Color(0xFF212121),
                      dividerHeight: 1.3,
                      tabs: const [
                        Tab(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Verified',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Mentions',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: const CustomFloatingActionButton(
          icon: Icons.add,
        ),
      ),
    );
  }
}
