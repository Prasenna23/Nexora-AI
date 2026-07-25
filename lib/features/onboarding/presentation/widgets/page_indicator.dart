import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/colors.dart';

class NexoraIndicator extends StatelessWidget {
  final PageController controller;

  const NexoraIndicator({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.primary,
        dotColor: Colors.grey.shade700,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}