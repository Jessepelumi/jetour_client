import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:jetour_client/shared/initials_avatar.dart';
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
            const InitialsAvatar(),
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
              asset: PhosphorIconsFill.radioButton,
              label: "Online",
              color: green,
            ),
          ],
        ),
      ],
    );
  }
}
