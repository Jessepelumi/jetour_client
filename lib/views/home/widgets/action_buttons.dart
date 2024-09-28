import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.actionName,
    required this.action,
    required this.icon,
  });

  final String actionName;
  final VoidCallback action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(smallMedium),
            decoration: BoxDecoration(
              color: primary.withOpacity(0.15),
              borderRadius: BorderRadius.circular(small),
            ),
            child: Icon(
              icon,
              color: primary,
            ),
          ),
          Text(actionName),
        ],
      ),
    );
  }
}
