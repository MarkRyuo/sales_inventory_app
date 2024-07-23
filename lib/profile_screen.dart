import 'package:flutter/material.dart';
import 'package:sales_inventory_app/home_screen.dart';
import 'package:sales_inventory_app/login_screen.dart';
import 'package:sales_inventory_app/product_screen.dart';
// import 'main.dart'; // Import the main file to access the LoginScreen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7E1), // Background color
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 246, 235),
        elevation: 1.0, // Adds shadow
        shadowColor: Colors.grey.withOpacity(0.6), // Customize the shadow color
        automaticallyImplyLeading: false, // Removes the back button
        title: const Row(
          children: [
            Text('Sales IMS', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
            SizedBox(width: 8),
            Icon(Icons.person, color: Color.fromARGB(200, 60, 60, 60)),
            SizedBox(width: 8),
            Text('Profile', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const Text(
              'Position',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(200, 60, 60, 60),
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF50B498),
              ),
              child: const Text('Log out', style: TextStyle(color: Color.fromARGB(255, 0, 209, 75))),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Set the Profile tab as the default selected tab
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProductScreen()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
            case 2:
              // Handle Profile tab (do nothing)
              break;
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 138, 255, 138),
        unselectedItemColor: const Color.fromARGB(200, 60, 60, 60),
      ),
    );
  }
}
