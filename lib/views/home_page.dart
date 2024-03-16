import 'package:flutter/material.dart';
import 'package:twitter/widgets/Custom_buttom.dart';

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
      body: Expanded(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontFamily: 'Chirp',
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                const CustomButtom(
                  buttomText: 'Continue with Google',
                  image: 'assets/images/Google__G__logo.svg.png',
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomButtom(
                  buttomText: 'Continue with Apple',
                  image: 'assets/images/apple-logo-transparent.png',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(child: Divider()),
                ]),
                const SizedBox(
                  height: 15,
                ),
                const CustomButtom(
                  buttomText: 'Create account',
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
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
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Have an account already? ,',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                        const TextSpan(
                          text: 'Log in',
                          style:
                              TextStyle(color: Color(0xff1c9ef5), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
