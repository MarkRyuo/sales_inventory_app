import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ! Fix this 
import 'theme.dart';
import 'login.dart';

void main() {
  runApp(SalesInventoryApp());
}

class SalesInventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Inventory App',
      theme: AppTheme.theme,
      home: LoginScreen(),
    );
  }
}
