import 'package:flutter/material.dart';

class PostButtons extends StatelessWidget {
  const PostButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25),
        ),
        IconButton(
          icon: Icon(
            Icons.mode_comment_outlined,
            color: Colors.grey[700],
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.share,
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Add your share button onPressed logic here
          },
        ),
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Add your like button onPressed logic here
          },
        ),
        IconButton(
          icon: Icon(
            Icons.bar_chart_outlined,
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Add your like button onPressed logic here
          },
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border_outlined,
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Add your like button onPressed logic here
          },
        ),
        IconButton(
          icon: Icon(
            Icons.ios_share_outlined,
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Add your like button onPressed logic here
          },
        ),
      ],
    );
  }
}
