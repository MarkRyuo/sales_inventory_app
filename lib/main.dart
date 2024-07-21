import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
import 'home_screen.dart'; // Import the home screen
// import 'profile_screen.dart'; // Import the profile screen
// import 'product_screen.dart'; // Import the ProductScreen


void main() {
  runApp(const SalesInventoryApp());
}

class SalesInventoryApp extends StatelessWidget {
  const SalesInventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Inventory',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _login() {
    // Implement your login logic here.
    // For demonstration, we'll navigate to the HomeScreen.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 255, 250, 235),
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
                        color: Color.fromARGB(255, 45, 45, 42),
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
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const  Color(0xFF06D200).withOpacity(0.50),
                        const Color.fromARGB(255, 9, 116, 5).withOpacity(0.97),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      minimumSize: const Size.fromHeight(50),
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text('Log In'),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Implement forgot password functionality
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 45, 45, 42),
                  ),
                  child: const Text('Forgot the password? Contact Admin'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
