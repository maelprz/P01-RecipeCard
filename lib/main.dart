import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'P01 - Recipe Card',
        home: RecipeCard(),
      ),
    );
  }
}

// App state for favorite toggle
class MyAppState extends ChangeNotifier {
  bool isFavorite = false;

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      backgroundColor: const Color(0xFFFBF8EC),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                            child: Image.asset('assets/Timer.png'),
                          ),
                          const SizedBox(width: 10),
                          const Text('Prep: 15 mins'),
                          const SizedBox(width: 50),
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
                const SizedBox(height: 20),
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
                      Text('• lemons', style: TextStyle(fontSize: 18)),
                      Text('• Fresh rosemary', style: TextStyle(fontSize: 18)),
                      Text('• Resiple cormarn', style: TextStyle(fontSize: 18)),
                      Text('• Pelite 1 ont Chicken', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                const SizedBox(height: 80), // extra spacing for heart icon
              ],
            ),
          ),

          // Heart icon floating above content
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: GestureDetector(
                onTap: () {
                  appState.toggleFavorite();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBF8EC),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: appState.isFavorite
                        ? const Color.fromARGB(186, 46, 89, 168)
                        : const Color.fromARGB(195, 0, 0, 0),
                    size: 30,
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

