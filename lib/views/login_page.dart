import 'package:flutter/material.dart';
import 'package:twitter/widgets/clickable_buttom.dart';
import 'package:twitter/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/X_logo_2023_(white).png',
          height: 40,
        ),
        backgroundColor: const Color(0xff070707),
      ),
      body: const Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'To get started, first enter your phone, email, or @username',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Chirp',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                textfieldbody: "phone, email, or @username",
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      NextClickableButtom(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
