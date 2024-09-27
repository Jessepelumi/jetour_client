import 'package:flutter/material.dart';
import 'package:jetour_client/auth/views/register/widgets/registration_textfield.dart';
import 'package:jetour_client/auth/views/register/widgets/terms_privacy.dart';
import 'package:jetour_client/auth/views/shared/login_link.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class RegistrationDetails extends StatelessWidget {
  const RegistrationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Create an account"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign up for an acount and get access to Jetour's features",
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
                isRequired: false,
                label: "National Identitiy Number",
                placeholder: "Enter NIN Number",
              ),
              const SizedBox(height: small),

              // login link
              const LoginLink(),
            ],
          ),
        ),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
