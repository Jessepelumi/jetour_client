import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/core/util/strings.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';
import 'package:jetour_client/views/nfc/confirm_details.dart';

class NfcScreen extends StatelessWidget {
  const NfcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "NFC Payment"),
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
                    children: [
                      Text(
                        "Hold your phone near the payment terminal to initiate the NFC transaction. Ensure NFC is enabled on your device.",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: black2.withOpacity(0.6),
                            ),
                      ),
                      const SizedBox(height: smallLarge),
                      Image.asset(AppStrings.nfcDevices),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: JetourElevatedButton(
                  buttonText: "Continue",
                  buttonAction: () => Get.to(() => const ConfirmDetails()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
