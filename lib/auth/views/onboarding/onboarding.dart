import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:jetour_client/auth/controllers/onboarding_controller.dart';
import 'package:jetour_client/auth/views/onboarding/onboarding_view.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: SafeArea(
          child: Stack(
            children: [
              // horizontal scrollable pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnboardingView(
                    image: "assets/image/contactless.png",
                    title: "Make payments anytime",
                    subtitle:
                        "Send and receive money even without internet with our offline NFC payment solution, keeping you connected to your finances, no matter where you are.",
                  ),
                  OnboardingView(
                    image: "assets/image/shield-locked.png",
                    title: "Your Payments, Fully Protected",
                    subtitle:
                        "Every transaction is secured with encryption and tokenization, ensuring your data stays safe. Biometric and PIN verification keeps your account secure!",
                  ),
                  OnboardingView(
                    image: "assets/image/sync-lock.png",
                    title: "Seamless Syncing, Hassle-Free",
                    subtitle:
                        "Offline payments are automatically syncned when you're back online, so you never miss a beat. Get real-time notifications once transactions get synced.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
