import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: small),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(small),
          child: Container(
            decoration: BoxDecoration(
              color: lightGrey.withOpacity(0.5),
              border: Border.all(color: lightGrey),
              borderRadius: BorderRadius.circular(small),
            ),
            child: const Icon(PhosphorIconsBold.caretLeft),
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        appbarHeight(),
      );
}