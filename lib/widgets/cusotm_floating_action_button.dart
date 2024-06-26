import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff1d9bf0),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    );
  }
}
