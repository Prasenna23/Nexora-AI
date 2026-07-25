import 'package:flutter/material.dart';
import 'package:nexora_ai/app/theme.dart';
import 'features/splash/splash_screen.dart';

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexora AI',
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}