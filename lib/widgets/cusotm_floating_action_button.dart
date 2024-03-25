import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff1d9bf0),
      child: const Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    );
  }
}
