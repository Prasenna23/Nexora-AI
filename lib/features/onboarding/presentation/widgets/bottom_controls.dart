import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';

class BottomControls extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomControls({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: PrimaryButton(
        text: "Next",
        onPressed: onPressed,
      ),
    );
  }
}