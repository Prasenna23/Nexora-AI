import 'package:flutter/material.dart';
import 'package:nexora_ai/core/constants/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.business_center_rounded,
          size: 72,
          color: AppColors.primary,
        ),
        SizedBox(height: 12),
        Text(
          'NEXORA AI',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}