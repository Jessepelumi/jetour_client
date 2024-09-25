import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';

class OnboardingGreeting extends StatelessWidget {
  const OnboardingGreeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: primary.withOpacity(0.3),
            ),
          ),
          child: const Text("Hello there!👋"),
        ),
      ),
    );
  }
}
