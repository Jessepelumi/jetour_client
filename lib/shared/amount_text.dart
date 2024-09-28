import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/localization/get_currency.dart';

class AmountText extends StatelessWidget {
  const AmountText({
    super.key,
    required this.isBalance,
    this.isCredit,
    required this.amount,
  });

  final bool isBalance;
  final bool? isCredit;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isBalance == false) Text(isCredit! ? "+ " : "- "),
        Text(
          getNaira() + amount,
          style: isBalance
              ? Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: white, fontWeight: FontWeight.bold)
              : Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
