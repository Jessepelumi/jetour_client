import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.title,
    required this.asset,
    required this.action,
    this.isLogout = false,
  });

  final String title;
  final IconData asset;
  final VoidCallback action;
  final bool? isLogout;

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
                Icon(
                  asset,
                  color: isLogout! ? red : black2,
                ),
                const SizedBox(width: small),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: isLogout! ? red : black2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
