import 'package:flutter/material.dart';
import 'package:twitter/views/MainPage.dart';
import 'package:twitter/widgets/Custom_buttom.dart';
import 'package:twitter/widgets/custom_text_field.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/X_logo_2023_(white).png',
          height: 32,
        ),
        backgroundColor: const Color(0xff070707),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enter your password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Chirp',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(
                textfieldbody: "phone, email, or @username",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                textfieldbody: "password",
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: const CustomButtom(buttomText: 'Log in'),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 50),
                alignment: Alignment.center,
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontFamily: 'Chirp',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
