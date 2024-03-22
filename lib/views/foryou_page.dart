import 'package:flutter/material.dart';
import 'package:twitter/widgets/post_view.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.all(16), child: PostView()),
    );
  }
}
