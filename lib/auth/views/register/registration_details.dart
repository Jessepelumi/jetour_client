import 'package:flutter/material.dart';
import 'package:jetour_client/auth/views/register/widgets/registration_textfield.dart';
import 'package:jetour_client/auth/views/register/widgets/terms_privacy.dart';
import 'package:jetour_client/auth/views/shared/login_link.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';

class RegistrationDetails extends StatefulWidget {
  const RegistrationDetails({super.key});

  @override
  RegistrationDetailsState createState() => RegistrationDetailsState();
}

class RegistrationDetailsState extends State<RegistrationDetails> {
  bool _isLoading = false;

  void _onContinue() async {
    setState(() {
      _isLoading = true; // Start loading
    });

    // Simulate a network request with a delay
    await Future.delayed(const Duration(seconds: 3));

    // Navigate to the next screen after the delay
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const NextScreen()), // Replace with your next screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Create an account"),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign up for an account and get access to Jetour's features",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: darkGrey),
                  ),
                  const SizedBox(height: small),

                  // Full Name
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
                  const RegistrationTextField(
                    label: "National Identity Number",
                    placeholder: "Enter NIN Number",
                    isRequired: false,
                  ),
                  const SizedBox(height: small),

                  // login link
                  const LoginLink(),
                ],
              ),
            ),
          ),

          // Loading overlay
          if (_isLoading)
            Container(
              color: Colors.black54, // Semi-transparent background
              width: double.infinity, // Fill the width
              height: double.infinity, // Fill the height
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Verifying Your Details'),
                  ],
                ), // Loading indicator
              ),
            ),
        ],
      ),

      // bottom
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: medium,
            vertical: smallMedium,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TermsAndPrivacy(),
              const SizedBox(height: smallMedium),
              JetourElevatedButton(
                buttonAction: _isLoading
                    ? () {}
                    : _onContinue, // Use no-op function when loading
                buttonText: _isLoading ? "Loading..." : "Continue",
              ),
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
        title: const Text("Create an account",
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
                buttonAction: () {}, // Use no-op function when loading
                buttonText: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
