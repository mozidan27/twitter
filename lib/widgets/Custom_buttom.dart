import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.buttomText, this.image});
  final String? image;
  final String buttomText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                image!,
                height: 30,
              ),
            ),
          Text(
            buttomText,
            style: const TextStyle(fontFamily: 'Chirp', fontSize: 16),
          )
        ],
      ),
    );
  }
}
