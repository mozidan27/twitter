import 'package:flutter/material.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
              )
            ],
            backgroundColor: const Color(0xff070707),
            expandedHeight: 50,
            centerTitle: true,
            title: const Text(
              'Messages',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Welcome to your inbox!',
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Drop a line, share posts and more with private conversations between you and others on X.',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(59),
                  color: Colors.blue,
                ),
                height: 75,
                width: 300,
                child: const Center(
                  child: Text(
                    'Write a message',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
