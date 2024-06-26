import 'package:flutter/material.dart';
import 'package:twitter/views/home_page.dart';

void main() {
  runApp(const Twitter());
}

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(fontFamily: 'Chirp'),
    );
  }
}
