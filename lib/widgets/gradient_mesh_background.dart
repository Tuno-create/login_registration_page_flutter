import 'package:flutter/material.dart';

class GradientMeshBackground extends StatelessWidget {
  final Widget child;

  const GradientMeshBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Clean 50/50 Split Background separated at the middle
          Column(
            children: [
              // Top Half: Deep Black & Rich Earthy Brown
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF070A09), // Deep Black
                        Color(0xFF1E1410), // Rich Earthy Brown
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              // Bottom Half: Deep Forest & Vibrant Green separated cleanly at the middle
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF0A1F15), // Deep Forest Transition from middle
                        Color(0xFF040E0A), // Rich Dark Green-Black base
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Glowing accent orb right across the middle separator for a professional transition
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * 0.2,
            right: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF10B981).withOpacity(0.25),
                    blurRadius: 70,
                    spreadRadius: 20,
                  ),
                  BoxShadow(
                    color: const Color(0xFF8B5A2B).withOpacity(0.20),
                    blurRadius: 70,
                    spreadRadius: 20,
                  ),
                ],
              ),
            ),
          ),

          // Child content
          child,
        ],
      ),
    );
  }
}
