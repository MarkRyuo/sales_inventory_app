import 'package:flutter/material.dart';
import 'home_screen.dart';

class SearchAssetsScreen extends StatefulWidget {
  const SearchAssetsScreen({super.key});

  @override
  _SearchAssetsScreenState createState() => _SearchAssetsScreenState();
}

class _SearchAssetsScreenState extends State<SearchAssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAEB), // Background color
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 248, 244),
        elevation: 1.0,
        shadowColor: const Color(0xFF505050).withOpacity(0.6),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        title: const Row(
          children: [
            Text('Sales IMS', style: TextStyle(color: Color(0xFF3C3C3C))),
            SizedBox(width: 8),
            Text('Search Assets', style: TextStyle(color: Color(0xFF3C3C3C))),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Sample search',
                suffixIcon: const Icon(Icons.search, color: Colors.green),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF8AFF8A).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // Add your search results or other content here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
