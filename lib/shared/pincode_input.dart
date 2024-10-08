import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/pin_field.dart';

class PinCodeInput extends StatelessWidget {
  const PinCodeInput({
    super.key,
    required this.label,
    this.isRequired = true,
    required this.pinInputLength,
    required this.action, required this.obscure,
  });

  final String label;
  final bool? isRequired;
  final bool obscure;
  final int pinInputLength;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label),
            if (isRequired == true)
              Text(
                " *",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: red, fontSize: smallMedium),
              ),
          ],
        ),
        const SizedBox(height: extraSmall),
        PinInputScreen(
          lenght: pinInputLength,
          obscure: obscure,
          onComplete: action,
        ),
      ],
    );
  }
}
