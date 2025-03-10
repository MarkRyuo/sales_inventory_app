import 'package:flutter/material.dart';
import 'package:sales_inventory_app/SearchAssetsScreen.dart';
import 'package:sales_inventory_app/login_screen.dart';
import 'package:sales_inventory_app/product_screen.dart';
import 'profile_screen.dart'; // Import the ProfileScreen
import 'scanner_screen.dart'; // Import the ScannerScreen
import 'add_new_asset_screen.dart'; // Import the AddNewAssetScreen

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
      backgroundColor: const Color(0xFFFFFAEB), // Background color
      appBar: AppBar(
      backgroundColor: const Color(0xFFFFFAEB), // Background color
        elevation: 1.0, // Adds shadow
        shadowColor: const Color.fromARGB(255, 80, 80, 80).withOpacity(0.6), // Customize the shadow color
        automaticallyImplyLeading: false, // Removes the back button
        title: const Row(
          children: [
            Text('Sales IMS', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
            SizedBox(width: 8),
            Icon(Icons.home, color: Color.fromARGB(200, 60, 60, 60)),
            SizedBox(width: 8),
            Text('Home', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScannerScreen()),
                );
              },
              icon: const Icon(Icons.qr_code_scanner, color: Color.fromARGB(200, 60, 60, 60)),
              label: const Text(
                'Scan asset',
                style: TextStyle(color: Color.fromARGB(200, 60, 60, 60)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchAssetsScreen()),
                );
              },
              icon: const Icon(Icons.search, color: Color.fromARGB(200, 60, 60, 60)),
              label: const Text(
                'Search assets', 
                style: TextStyle(color: Color.fromARGB(200, 60, 60, 60)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 24),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNewAssetScreen()),
                );
              },
              icon: const Icon(Icons.add, color: Color.fromARGB(200, 60, 60, 60)),
              label: const Text(
                'Add new asset', 
                style: TextStyle(color: Color.fromARGB(200, 60, 60, 60)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 255, 138),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                textStyle: const TextStyle(fontSize: 18),
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
