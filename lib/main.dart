import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'P01 - Recipe Card',
      home: RecipeCard(),
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8EC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // left-align
        children: [
          SizedBox(
            width: 500,
            height: 300,
            child: Image.asset(
              'assets/lemonroastedchicken.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 10), 
            child: Text(
              'Lemon Roasted Herb Chicken',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}