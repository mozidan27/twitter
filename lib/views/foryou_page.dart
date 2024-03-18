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
              Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostButtons extends StatelessWidget {
  const PostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.comment),
          onPressed: () {
            // Add your comment button onPressed logic here
          },
        ),
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {
            // Add your share button onPressed logic here
          },
        ),
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            // Add your like button onPressed logic here
          },
        ),
      ],
    );
  }
}
