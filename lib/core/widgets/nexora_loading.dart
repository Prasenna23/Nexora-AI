import 'package:flutter/material.dart';
import 'package:nexora_ai/core/constants/colors.dart';

class NexoraLoading extends StatelessWidget {
  const NexoraLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}