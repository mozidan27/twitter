import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
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
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            'Following',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
