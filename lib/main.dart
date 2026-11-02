import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const BenbwesehApp());
}

class BenbwesehApp extends StatelessWidget {
  const BenbwesehApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benbweseh Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B0F0E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF10B981),
          brightness: Brightness.dark,
          primary: const Color(0xFF10B981),
          secondary: const Color(0xFF8B5A2B), // Earthy brown accent
          surface: const Color(0xFF141C1A),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
