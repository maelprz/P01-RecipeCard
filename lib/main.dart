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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe image
            SizedBox(
              width: 500,
              height: 300,
              child: Image.asset(
                'assets/lemonroastedchicken.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            // Recipe title
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Lemon Herb Roasted Chicken',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Icons and info
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First row: Timer & Chef Hat
                  Row(
                    children: [
                      // Timer
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(186, 46, 89, 168),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/Timer.png'),
                      ),
                      const SizedBox(width: 10),
                      const Text('Prep: 15 mins'),

                      const SizedBox(width: 50),

                      // Chef Hat
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(186, 46, 89, 168),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/ChefHat.png'),
                      ),
                      const SizedBox(width: 10),
                      const Text('Difficulty: Easy'),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Second row: Star
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(186, 46, 89, 168),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset('assets/Star.png'),
                      ),
                      const SizedBox(width: 10),
                      const Text('Cook: 45 mins'),
                    ],
                  ),
                ],
              ),
            ),

            // Ingredients Section
            const SizedBox(height: 20), // spacing before ingredients
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('• 1 whole chicken', style: TextStyle(fontSize: 18)),
                  Text('• lemons', style: TextStyle(fontSize: 18)),
                  Text('• Fresh Rosemary', style: TextStyle(fontSize: 18)),
                  Text('• Resiple Cormarn', style: TextStyle(fontSize: 18)),
                  Text('• Pelite 1 ont Chicken', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}