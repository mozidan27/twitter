import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff070707),
        title: const Text(
          'Communities',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.group_add_outlined,
              color: Colors.white,
            ),
          ),
        ],
        leading: const Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Discover new communities',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red),
                  height: 120,
                  width: 120,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Design Sphere',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '233 Members',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const Text(
                        'Design',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                left: 12.5,
                                top: 1.0,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber),
                                ),
                              ),
                              Positioned(
                                left: 0.0,
                                top: 1.0,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
