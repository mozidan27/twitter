
import 'package:flutter/material.dart';
import 'package:twitter/widgets/post_buttons.dart';

class PostView extends StatelessWidget {
  const PostView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/download.jpg'),
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
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Hello this is zidan and i'm new flutter dev please give me some support",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 60),
          child: Image.asset('assets/images/download.jpg'),
        ),
        const SizedBox(
          height: 20,
        ),
        const PostButtons(),
      ],
    );
  }
}
