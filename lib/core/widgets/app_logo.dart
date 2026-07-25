import 'package:flutter/material.dart';
import 'package:nexora_ai/core/constants/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: const Icon(
        Icons.auto_awesome,
        size: 70,
        color: AppColors.primary,
      ),
    );
  }
}