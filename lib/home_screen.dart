import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF7E1), // Background color
      appBar: AppBar(
        backgroundColor: Color(0xFFD4ED91),
        title: Row(
          children: [
            Icon(Icons.home),
            SizedBox(width: 8),
            Text('Home'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner),
              label: Text('Scan asset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF50B498),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.search),
              label: Text('Search assets'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDEF9C4),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add new asset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF468585),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
