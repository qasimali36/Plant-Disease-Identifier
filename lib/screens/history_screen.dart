import 'package:flutter/material.dart';
import 'drawer.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Colors.green,
      ),
      drawer: const CustomDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildHistoryItem(
                    image: const AssetImage('images/healthy_image.jpg'),
                    title: 'Healthy',
                    date: 'February 18, 2024',
                  ),
                  const SizedBox(height: 20),
                  _buildHistoryItem(
                    image: const AssetImage('images/another_image.jpg'),
                    title: 'Another Title',
                    date: 'February 17, 2024',
                  ),
                  const SizedBox(height: 20),
                  _buildHistoryItem(
                    image: const AssetImage('images/healthy_image.jpg'),
                    title: 'Healthy',
                    date: 'February 18, 2024',
                  ),
                  // Add more history items here
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryItem({
    required AssetImage image,
    required String title,
    required String date,
  }) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.green.withOpacity(0.5), // Semi-transparent green background
      ),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Date: $date',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
