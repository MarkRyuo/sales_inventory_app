import 'package:flutter/material.dart';
import 'package:sales_inventory_app/product_screen.dart';
import 'main.dart'; // Import the main file to access the LoginScreen
import 'profile_screen.dart'; // Import the ProfileScreen


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1; // Set the Home tab as the default selected tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProductScreen()),
        );
        break;
      case 1:
        // Handle Home tab (do nothing)
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 247, 225), // Background color
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 246, 235),
        elevation: 1.0, // Adds shadow
        shadowColor: Color.fromARGB(255, 80, 80, 80).withOpacity(0.6), // Customize the shadow color
        title: const Row(
          children: [
            Text('Sales IMS', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(200, 60, 60, 60))),
            SizedBox(width: 8),
            Icon(Icons.home, color: Color.fromARGB(200, 60, 60, 60)),
            SizedBox(width: 8),
            Text('Home', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(200, 60, 60, 60))),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text(
                'Scan asset',
                style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(255, 255, 255, 255)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
                textStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: const Text(
                'Search assets',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 24),
                textStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text(
                'Add new asset',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                textStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Products',
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
