import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "there is no weather 😔",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            "Start searching now 🔍",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
