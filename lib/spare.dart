import 'package:flutter/material.dart';

class SpacedStackedContainers extends StatelessWidget {
  const SpacedStackedContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.red,
            // Add your container content if any
          ),
          const SizedBox(
              height:
                  20), // This SizedBox provides space between the containers
          Container(
            height: 100,
            color: Colors.green,
            // Add your container content if any
          ),
          const SizedBox(
              height: 20), // Adjust the height for more or less space
          Container(
            height: 100,
            color: Colors.blue,
            // Add your container content if any
          ),
          // Add more containers and SizedBoxes as needed
        ],
      ),
    );
  }
}
