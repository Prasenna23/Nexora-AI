import 'package:flutter/material.dart';
import 'package:nexora_ai/core/constants/colors.dart';

class NexoraCard extends StatelessWidget {
  final Widget child;

  const NexoraCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: child,
    );
  }
}