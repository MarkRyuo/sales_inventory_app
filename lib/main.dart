import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package

void main() {
  runApp(SalesInventoryApp());
}

class SalesInventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Inventory',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _isHovered = false; // Track hover state

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 250, 235), // Background color in RGB format
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/inventory-svgrepo-com.svg', // Use SvgPicture.asset for SVG
                      height: 60,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Sales Inventory',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered = false;
                    });
                  },
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 300, // Set the maximum width for the button
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          _isHovered
                              ? Color(0xFF03A900).withOpacity(0.60) // Lighter green on hover
                              : Color(0xFF06D200).withOpacity(0.70),
                          _isHovered
                              ? Color.fromARGB(255, 87, 245, 82).withOpacity(0.8) // Darker green on hover
                              : Color(0xFF036C00).withOpacity(0.97),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Use transparent color
                        padding: const EdgeInsets.symmetric(vertical: 20), // Increased vertical padding
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white, // Set text color to white
                        ), // Increased font size
                        minimumSize: const Size.fromHeight(50), // Minimum height for the button
                        shadowColor: Colors.transparent, // Remove shadow
                      ),
                      child: const Text('Log In'),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Implement forgot password functionality
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 31, 31, 31),
                  ),
                  child: const Text('forgot the password? Contact Admin'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
