import 'package:flutter/material.dart';
import 'package:sales_inventory_app/home_screen.dart';
import 'main.dart'; // Import the main file to access the LoginScreen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF7E1), // Background color
      appBar: AppBar(
        backgroundColor: Color(0xFFD4ED91),
        title: const Row(
          children: [
            Text('Sales IMS'),
            SizedBox(width: 8),
            Icon(Icons.person),
            SizedBox(width: 8),
            Text('Profile'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            Text(
              'Position',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF50B498),
              ),
              child: Text('Log out'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Set the Profile tab as the default selected tab
        onTap: (index) {
          switch (index) {
            case 0:
              // Handle Files tab
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
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
        selectedItemColor: Color(0xFF50B498),
        unselectedItemColor: Color(0xFF9CDBA6),
      ),
    );
  }
}
