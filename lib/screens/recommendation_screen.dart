import 'package:flutter/material.dart';

class RecommendationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendation'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Recommendation',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                _buildRecommendationItem(
                  text: 'Light infection - Spray\n'
                      'Carbendazim or Edifenphos @\n'
                      '1.0 gm/lit.\n\n'
                      'At 2 to 5% leaf area damage-spray Edifenphos or\n'
                      'Carbendazim or Tricyclazole @\n'
                      '1.0 gm/lit.\n\n'
                      'At 5 % leat area damage or 1 to 2 % neck infection spray Edifenphos or Carbendazim or Tricyclazole @ 1 g/lit of water.\n'
                      'Spray before 11.00 AM/after\n'
                      '3.00 PM.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendationItem({required String text}) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.green.withOpacity(0.5),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.italic,
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
