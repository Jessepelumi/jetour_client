import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';

class InitialsAvatar extends StatelessWidget {
  const InitialsAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          "JA",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
