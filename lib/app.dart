import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/auth/views/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
