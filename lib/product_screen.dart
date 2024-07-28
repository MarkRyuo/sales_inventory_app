import 'package:flutter/material.dart';
import 'package:sales_inventory_app/home_screen.dart';
import 'package:sales_inventory_app/profile_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFAEB), // Background color
      appBar: AppBar(
      backgroundColor: const Color(0xFFFFFAEB), // top bar Background color
        elevation: 1.0, // Adds shadow
        shadowColor: Colors.grey.withOpacity(0.6), // Customize the shadow color
        automaticallyImplyLeading: false, // Removes the back button
        title: const Row(
          children: [
            Text('Sales IMS', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
            SizedBox(width: 8),
            Icon(Icons.folder, color: Color.fromARGB(200, 60, 60, 60)),
            SizedBox(width: 8),
            Text('Products', style: TextStyle(color: Color.fromARGB(200, 60, 60, 60))),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding if needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align to the start
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Adjust width based on screen size
                SizedBox(
                  width: screenWidth * 0.4, // 40% of screen width
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDEF9C4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cable, color: Colors.green),
                            SizedBox(width: 8), // Add some spacing between icon and text
                            Text(
                              'Product',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.4, // 40% of screen width
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDEF9C4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart, color: Colors.green),
                            SizedBox(width: 8), // Add some spacing between icon and text
                            Text(
                              'Sales',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
              break;
          }
        },
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
