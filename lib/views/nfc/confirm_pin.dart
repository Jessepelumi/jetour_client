import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';
import 'package:jetour_client/shared/pincode_input.dart';

class ConfirmPin extends StatelessWidget {
  const ConfirmPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Confirm Details"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: smallMedium,
            vertical: small,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your 4-digit PIN to complete the transaction.",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: black2.withOpacity(0.6),
                            ),
                      ),
                      const SizedBox(height: medium),
                      PinCodeInput(
                        label: "Enter PIN",
                        pinInputLength: 4,
                        obscure: true,
                        action: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: JetourElevatedButton(
                  buttonText: "Authorize Payment",
                  buttonAction: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
