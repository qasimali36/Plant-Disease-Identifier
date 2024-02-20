import 'package:flutter/material.dart';
import 'package:plant_disease_detection/screens/drawer.dart';

class DiseaseCategoriesScreen extends StatelessWidget {
  const DiseaseCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disease Categories'),
        backgroundColor: Colors.green,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'), // Adjust the path to your background image
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Disease Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Blast'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Brown-spot'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                  const SizedBox(height: 20),
                  _buildCategoryItem('Healthy'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String categoryName) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.green.withOpacity(0.5), // Semi-transparent green background
      ),
      child: Text(
        categoryName,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
