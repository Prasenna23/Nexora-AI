import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nexora_ai/features/onboarding/presentation/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0F172A),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),

            Icon(
              Icons.business_center_rounded,
              size: 90,
              color: Color(0xFF3B82F6),
            ),

            SizedBox(height: 20),

            Text(
              'NEXORA AI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Your AI Workforce',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),

            Spacer(),

            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Version 1.0',
                style: TextStyle(
                  color: Colors.white38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}