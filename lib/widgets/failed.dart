import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';

class Failed extends StatelessWidget {
  const Failed({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Oops!",
            style: TextStyle(
              color: Colors.red,
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Couldn't find the city you were looking for at this time.",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchPage();
                  },
                ),
              );
            },
            child: Container(
              height: 72,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                color: Colors.grey,
              ),
              child: const Center(
                child: Text(
                  "Try again",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
