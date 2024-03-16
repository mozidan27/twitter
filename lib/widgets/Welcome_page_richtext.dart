import 'package:flutter/material.dart';

class WelcomPageRichText extends StatelessWidget {
  const WelcomPageRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "By signing up, you agree to our ",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          const TextSpan(
            text: "Terms",
            style: TextStyle(
              color: Color(0xff1c9ef5),
            ),
          ),
          TextSpan(
            text: ", ",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          const TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
              color: Color(0xff1c9ef5),
            ),
          ),
          TextSpan(
            text: ", and ",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          const TextSpan(
            text: "Cookie Use",
            style: TextStyle(
              color: Color(0xff1c9ef5),
            ),
          ),
          TextSpan(
            text: ".",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
