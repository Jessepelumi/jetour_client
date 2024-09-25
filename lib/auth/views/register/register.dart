import 'package:flutter/material.dart';
import 'package:jetour_client/auth/views/register/widgets/registration_textfield.dart';
import 'package:jetour_client/auth/views/register/widgets/terms_privacy.dart';
import 'package:jetour_client/auth/views/shared/login_link.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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

              // email address
              const RegistrationTextField(
                label: "Email address",
                placeholder: "jetour.mail@jetour.com",
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
