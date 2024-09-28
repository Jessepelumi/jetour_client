import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.actionText,
    this.action,
  });

  final String title;
  final String? actionText;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: darkGrey, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: action,
          child: Text(
            actionText!,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: primary),
          ),
        ),
      ],
    );
  }
}
