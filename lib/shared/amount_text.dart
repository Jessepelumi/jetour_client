import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/localization/get_currency.dart';

class AmountText extends StatelessWidget {
  const AmountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      getNaira() + "6,120,390.15",
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: white, fontWeight: FontWeight.bold),
    );
  }
}
