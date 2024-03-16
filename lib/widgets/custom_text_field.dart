import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textfieldbody});

  final String textfieldbody;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: textfieldbody,
        hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }
}
