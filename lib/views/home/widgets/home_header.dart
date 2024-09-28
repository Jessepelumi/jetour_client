import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
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
            ),
            const SizedBox(width: small),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Good morning,"),
                Text(
                  "Jesse",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: medium),
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Internet status:",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const InformationContainer(
              hasAsset: true,
              asset: PhosphorIconsFill.dot,
              label: "Online",
              color: green,
            ),
          ],
        ),
      ],
    );
  }
}
