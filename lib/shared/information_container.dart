import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/sizes.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    super.key,
    required this.label,
    required this.color,
    this.hasAsset = false,
    this.asset,
  });

  final String label;
  final Color color;
  final bool hasAsset;
  final IconData? asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: small,
        vertical: extraSmall,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: const BorderRadius.all(
          Radius.circular(smallMedium),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (hasAsset == true)
            Icon(
              asset,
              color: color,
              size: smallMedium,
            ),
          const SizedBox(width: extraSmall),
          Text(
            label,
            style:
                Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
