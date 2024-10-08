import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/auth/views/register/registration_details.dart';
import 'package:jetour_client/auth/views/register/widgets/registration_textfield.dart';
import 'package:jetour_client/auth/views/register/widgets/terms_privacy.dart';
import 'package:jetour_client/auth/views/shared/login_link.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/core/util/strings.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                      const RegistrationTextField(
                        label: "Password",
                        placeholder: "password",
                        obscure: true,
                      ),
                      const SizedBox(height: small),
                      const RegistrationTextField(
                        label: "Confirm password",
                        placeholder: "confirm password",
                        obscure: true,
                      ),
                      const SizedBox(height: medium),

                      // Google account
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: black2,
                              thickness: 0.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: small,
                            ),
                            child: Text(
                              "OR",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: black2,
                              thickness: 0.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: medium),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(small * 1.5),
                          decoration: BoxDecoration(
                            color: black2.withOpacity(0.1),
                            border: Border.all(color: lightGrey),
                            borderRadius: BorderRadius.circular(small),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppStrings.googleLogo),
                              const SizedBox(width: small),
                              Text(
                                "Continue with Google",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: smallMedium),

                      // login link
                      const LoginLink(),
                    ],
                  ),
                ),
              ),
              const TermsAndPrivacy(),
              const SizedBox(height: smallMedium),
              SizedBox(
                width: double.infinity,
                child: JetourElevatedButton(
                  buttonText: "Continue",
                  buttonAction: () => Get.to(() => const RegistrationDetails()),
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
