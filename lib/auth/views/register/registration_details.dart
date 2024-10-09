import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/auth/views/register/widgets/registration_textfield.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/router/navigation.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';

class RegistrationDetails extends StatelessWidget {
  const RegistrationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Create an account"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome! Just enter a few personal details to complete your account setup.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: darkGrey),
                      ),
                      const SizedBox(height: small),

                      // email address
                      const RegistrationTextField(
                        label: "Full Name",
                        placeholder: "Enter full name here",
                      ),
                      const SizedBox(height: small),
                      const RegistrationTextField(
                        label: "Bank Verification Number (BVN)",
                        placeholder: "Enter 10 digits BVN",
                      ),
                      const SizedBox(height: small),
                      const InformationContainer(
                        label: "JESSE ADESINA",
                        color: green,
                      ),
                      const SizedBox(height: small),
                      const RegistrationTextField(
                        label: "National Identity Number (NIN)",
                        placeholder: "Enter NIN Number",
                        isRequired: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: JetourElevatedButton(
                  buttonText: "Continue",
                  buttonAction: () => Get.to(() => const NextScreen()),
                ),
              ),
              const SizedBox(height: small),
            ],
          ),
        ),
      ),
    );
  }
}

// Dummy NextScreen for navigation
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create an account",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(small),
          child: Column(
            children: [
              Image.asset(
                "assets/image/person-check.png",
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.01,
              // ),
              Text(
                "Registration Successful!",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: extraLarge),
                child: Text(
                  "You're all set to start making payments—online or offline. Click “Continue” to get started!",
                  textAlign: TextAlign.center, // Center the text
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: smallLarge,
                        color: lightGrey,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: medium,
            vertical: smallMedium,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: smallMedium),
              JetourElevatedButton(
                buttonAction: () => Get.to(
                  () => const Navigation(),
                ), // Use no-op function when loading
                buttonText: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
