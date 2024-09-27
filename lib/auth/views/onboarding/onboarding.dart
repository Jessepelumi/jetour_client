import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:jetour_client/auth/controllers/onboarding_controller.dart';
import 'package:jetour_client/auth/views/onboarding/onboarding_view.dart';
import 'package:jetour_client/auth/views/onboarding/widgets/dot_navigation.dart';
import 'package:jetour_client/auth/views/onboarding/widgets/onboarding_greeting.dart';
import 'package:jetour_client/auth/views/register/register.dart';
import 'package:jetour_client/core/util/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SafeArea(
          child: Stack(
            children: [
              Row(
                children: [
                  Image.asset("assets/image/app-icon.png"),
                  const SizedBox(width: 4),
                  Text(
                    "JETOUR",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: primary,
                        ),
                  ),
                ],
              ),

              // horizontal scrollable pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnboardingView(
                    image: "assets/image/contactless.png",
                    title: "Make Payments Anytime, Anywhere",
                    subtitle:
                        "Send and receive money even without internet with our offline NFC payment solution, keeping you connected to your finances, no matter where you are.",
                    buttonText: "Continue",
                    action: () {},
                  ),
                  OnboardingView(
                    image: "assets/image/shield-locked.png",
                    title: "Your Payments, Fully Protected",
                    subtitle:
                        "Every transaction is secured with encryption and tokenization, ensuring your data stays safe. Biometric and PIN verification keeps your account secure!",
                    buttonText: "Continue",
                    action: () {},
                  ),
                  OnboardingView(
                    image: "assets/image/sync-lock.png",
                    title: "Seamless Syncing, Hassle-Free",
                    subtitle:
                        "Offline payments are automatically syncned when you're back online, so you never miss a beat. Get real-time notifications once transactions get synced.",
                    buttonText: "Get Started",
                    action: () => Get.to(() => const Register()),
                  ),
                ],
              ),

              // dot
              const DotNavigation(),

              // hello
              const OnboardingGreeting(),
            ],
          ),
        ),
      ),
    );
  }
}
