import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/auth/views/login/login.dart';
//import 'package:jetour_client/auth/views/onboarding/onboarding.dart';
//import 'package:jetour_client/auth/views/register/register.dart';
//import 'package:jetour_client/auth/views/register/registration_details.dart';
import 'package:jetour_client/core/theme/elevated_button.dart';
import 'package:jetour_client/core/util/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        elevatedButtonTheme: AppElevatedButtonTheme.appElevatedButtonTheme,
      ),
      home: const Login(),
    );
  }
}
