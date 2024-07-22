import 'package:flutter/material.dart';
import 'home_screen.dart';

class AddNewAssetScreen extends StatefulWidget {
  const AddNewAssetScreen({super.key});

  @override
  _AddNewAssetScreenState createState() => _AddNewAssetScreenState();
}

class _AddNewAssetScreenState extends State<AddNewAssetScreen> {
  int _quantity = 1; // Default quantity value

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7E1), // Background color
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF6EB),
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
            Text('Add new asset', style: TextStyle(color: Color(0xFF3C3C3C))),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Bar-code ID', style: TextStyle(color: Color(0xFF3C3C3C))),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Text box',
                filled: true,
                fillColor: const Color(0xFF8AFF8A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Name of product', style: TextStyle(color: Color(0xFF3C3C3C))),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Text box',
                filled: true,
                fillColor: const Color(0xFF8AFF8A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Price of product', style: TextStyle(color: Color(0xFF3C3C3C))),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Text box',
                filled: true,
                fillColor: const Color(0xFF8AFF8A),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline, color: Color(0xFF3C3C3C)),
                  onPressed: _decrementQuantity,
                ),
                Text('$_quantity', style: const TextStyle(fontSize: 18, color: Color(0xFF3C3C3C))),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline, color: Color(0xFF3C3C3C)),
                  onPressed: _incrementQuantity,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle 'Done' action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8AFF8A),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Done', style: TextStyle(color: Color(0xFF3C3C3C))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
