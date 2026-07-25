import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/splash/splash_screen.dart';

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexora AI',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}