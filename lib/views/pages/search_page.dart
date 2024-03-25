import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter/widgets/cusotm_floating_action_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
              title: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '🔍 Search',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      automaticIndicatorColorAdjustment: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[800],
                      isScrollable: true,
                      indicatorColor: const Color(0xff1d9bf0),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 5,
                      dividerColor: const Color(0xFF212121),
                      dividerHeight: 1.3,
                      tabs: const [
                        Tab(
                          child: Text(
                            'For you',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Trending',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'News',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sports',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Entertainment',
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
