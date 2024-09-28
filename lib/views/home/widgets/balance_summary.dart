import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/amount_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BalanceSummary extends StatelessWidget {
  const BalanceSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(smallMedium),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(small),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(extraSmall),
                decoration: BoxDecoration(
                  color: white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(small),
                ),
                child: Text(
                  "NGN",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(small),
                ),
                child: const Icon(
                  PhosphorIconsRegular.eyeSlash,
                ),
              ),
            ],
          ),
          const SizedBox(height: medium),
          const AmountText(
            isBalance: true,
            amount: "6,120,390.15",
          ),
          const SizedBox(height: extraSmall),
          Container(
            padding: const EdgeInsets.all(extraSmall),
            decoration: BoxDecoration(
              color: white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(small),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Last sync: ",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: white.withOpacity(0.8)),
                ),
                Text(
                  "15 mins ago",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
