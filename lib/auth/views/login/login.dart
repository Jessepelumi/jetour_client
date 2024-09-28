import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:jetour_client/shared/pincode_input.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const String user = "Jesse";

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Login",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: medium),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back, $user!",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: large),
              ),
              Text(
                "Log in to continue where you left off",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: darkGrey, fontSize: smallMedium),
              ),
              const SizedBox(height: medium),

              // pin input
              PinCodeInput(
                label: "Enter your password",
                isRequired: false,
                pinInputLength: 6,
                action: () {},
              ),

              // information and forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const InformationContainer(
                    hasAsset: false,
                    label: "Incorrect Code",
                    color: orange,
                  ),
                  GestureDetector(
                    child: Text(
                      "Forget password?",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: primary),
                    ),
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
