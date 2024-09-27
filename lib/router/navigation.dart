import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/views/home/home.dart';
import 'package:jetour_client/views/profile/profile.dart';
import 'package:jetour_client/views/transactions/transactions.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: white,
          indicatorColor: Colors.transparent,
          destinations: [
            // home
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.resolveWith(
                  (states) => states.contains(WidgetState.selected)
                      ? const TextStyle(color: primary)
                      : const TextStyle(color: black),
                ),
              ),
              child: const NavigationDestination(
                icon: Icon(PhosphorIconsRegular.houseSimple),
                label: "Home",
                selectedIcon: Icon(
                  PhosphorIconsFill.houseSimple,
                  color: primary,
                ),
              ),
            ),

            // transactions
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.resolveWith(
                  (states) => states.contains(WidgetState.selected)
                      ? const TextStyle(color: primary)
                      : const TextStyle(color: black),
                ),
              ),
              child: const NavigationDestination(
                icon: Icon(PhosphorIconsRegular.fileText),
                label: "Transactions",
                selectedIcon: Icon(
                  PhosphorIconsFill.fileText,
                  color: primary,
                ),
              ),
            ),

            // profile
            NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.resolveWith(
                  (states) => states.contains(WidgetState.selected)
                      ? const TextStyle(color: primary)
                      : const TextStyle(color: black),
                ),
              ),
              child: const NavigationDestination(
                icon: Icon(PhosphorIconsRegular.user),
                label: "Profile",
                selectedIcon: Icon(
                  PhosphorIconsFill.user,
                  color: primary,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

// navigation controller
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const Transactions(),
    const Profile(),
  ];
}
