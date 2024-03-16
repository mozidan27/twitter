import 'package:flutter/material.dart';
import 'package:twitter/widgets/Custom_buttom.dart';
import 'package:twitter/widgets/Welcome_page_richtext.dart';
import 'package:twitter/widgets/welcome_page_logintext.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Text(
                      "See what's happening in the world right now.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 31,
                        fontFamily: 'Chirp',
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    CustomButtom(
                      buttomText: 'Continue with Google',
                      image: 'assets/images/Google__G__logo.svg.png',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomButtom(
                      buttomText: 'Continue with Apple',
                      image: 'assets/images/apple-logo-transparent.png',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomButtom(
                      buttomText: 'Create account',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    WelcomPageRichText(),
                    SizedBox(
                      height: 15,
                    ),
                    WelcomPageLoginText()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
