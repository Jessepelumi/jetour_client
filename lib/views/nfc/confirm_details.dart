import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/amount_text.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:jetour_client/shared/jetour_elevated_button.dart';
import 'package:jetour_client/views/nfc/confirm_pin.dart';

class ConfirmDetails extends StatelessWidget {
  const ConfirmDetails({super.key});

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
                        "Review the payment details and authorize the transaction by entering your PIN.",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: black2.withOpacity(0.6),
                            ),
                      ),
                      const SizedBox(height: medium),
                      Text(
                        "You are sending:",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: black2.withOpacity(0.6),
                            ),
                      ),
                      const SizedBox(height: small),
                      const AmountText(
                        isBalance: true,
                        amount: "354,780.90",
                        color: black,
                      ),
                      const SizedBox(height: small),
                      Text(
                        "To:",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: black2.withOpacity(0.6),
                            ),
                      ),
                      const SizedBox(height: small),
                      Text(
                        "Kora Payment Hub",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: black2,
                            ),
                      ),
                      const SizedBox(height: extraSmall),
                      const InformationContainer(
                        label: "Moniepoint MFB - 0123456789",
                        color: primary,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: JetourElevatedButton(
                  buttonText: "Enter PIN",
                  buttonAction: () => Get.to(() => const ConfirmPin()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
