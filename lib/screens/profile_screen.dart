import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade300,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(80)),
                  ),
                ),
                const Positioned(
                  top: 30,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/200/200'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            const Text(
              'Satriya Wicaksana',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Passionate about creating beautiful and functional mobile applications using Flutter. Always eager to learn and share knowledge.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
