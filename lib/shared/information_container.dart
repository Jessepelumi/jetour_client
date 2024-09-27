import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/sizes.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: small,
        vertical: extraSmall,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(extraSmall),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
      ),
    );
  }
}
