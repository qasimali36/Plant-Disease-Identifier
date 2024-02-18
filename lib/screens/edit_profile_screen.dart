import 'package:flutter/material.dart';

import 'drawer.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: const CustomDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green[900]!,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green
                    .withOpacity(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Full Name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green[900]!,
                          width: 5.0,
                        ),
                      ),
                      fillColor: Colors.white.withOpacity(
                          0.5),
                      filled: true,
                      hintText: 'Enter your full name',
                      hintStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    style: const TextStyle(
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green[900]!,
                          width: 5.0,
                        ),
                      ),
                      fillColor: Colors.white.withOpacity(
                          0.5),
                      filled: true,
                      hintText: 'Enter your phone number',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green[900]!,
                          width: 5.0,
                        ),
                      ),
                      fillColor: Colors.white.withOpacity(
                          0.5),
                      filled: true,
                      hintText: 'Enter your address',
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight:
                              FontWeight.w300),
                    ),
                    style: const TextStyle(
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                    child: const Text(
                      'Update',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
