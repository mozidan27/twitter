import 'package:flutter/material.dart';

class WelcomPageLoginText extends StatelessWidget {
  const WelcomPageLoginText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Have an account already? ,',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const TextSpan(
              text: 'Log in',
              style: TextStyle(color: Color(0xff1c9ef5), fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
