import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class RegistrationTextField extends StatelessWidget {
  const RegistrationTextField({
    super.key,
    required this.label,
    required this.placeholder,
    this.isRequired = true,
    this.obscure = false,
  });

  final String label, placeholder;
  final bool? isRequired;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: black, fontSize: smallMedium),
              ),
              if (isRequired == true)
                TextSpan(
                  text: " *",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: red, fontSize: smallMedium),
                ),
            ],
          ),
        ),
        const SizedBox(height: extraSmall),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(
              placeholder,
              style: context.textTheme.labelLarge?.copyWith(color: lightGrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: lightGrey),
              borderRadius: BorderRadius.circular(small),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primary),
              borderRadius: BorderRadius.circular(small),
            ),
          ),
        ),
      ],
    );
  }
}

class _VerifyingState extends StatefulWidget {
  const _VerifyingState();

  @override
  State<_VerifyingState> createState() => __VerifyingStateState();
}

class __VerifyingStateState extends State<_VerifyingState> {
  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
