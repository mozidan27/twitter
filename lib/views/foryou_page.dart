import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Expanded(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    'assets/images/download.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Mohamed Zidan',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '@mozidan27',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[700],
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
