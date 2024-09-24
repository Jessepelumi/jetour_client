import 'package:flutter/material.dart';

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
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.blue),
          ),
          child: const Text("Hello there!👋"),
        ),
      ),
    );
  }
}
