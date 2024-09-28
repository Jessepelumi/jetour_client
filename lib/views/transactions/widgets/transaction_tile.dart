import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/amount_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.isCredit,
    required this.title,
    required this.time,
    required this.day,
    this.isBalance = false, required this.amount,
  });

  final bool isBalance, isCredit;
  final String title, time, day, amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: smallMedium),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGrey),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isCredit ? primary : red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                isCredit ? "CR" : "DB",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: small),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      time,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: black2.withOpacity(0.6),
                          ),
                    ),
                    Icon(
                      PhosphorIconsBold.dot,
                      color: black2.withOpacity(0.6),
                    ),
                    Text(
                      day,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: black2.withOpacity(0.6),
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              AmountText(
                isBalance: isBalance,
                isCredit: isCredit,
                amount: amount,
              ),
              const Icon(
                PhosphorIconsBold.caretRight,
                size: medium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
