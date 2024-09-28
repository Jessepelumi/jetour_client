import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.title,
    required this.asset,
    required this.action,
  });

  final String title;
  final IconData asset;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(smallMedium),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(small),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: action,
            child: Row(
              children: [
                Icon(asset),
                const SizedBox(width: small),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
