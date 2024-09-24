import 'package:flutter/material.dart';
import 'package:jetour_client/auth/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.blue,
          dotHeight: 8,
          dotWidth: 10,
          spacing: 4,
        ),
      ),
    );
  }
}
