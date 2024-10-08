import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/auth/views/login/login.dart';
import 'package:jetour_client/core/util/colors.dart';

class LoginLink extends StatelessWidget {
  const LoginLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? ",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: lightGrey),
          ),
          TextSpan(
            text: "Login here",
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(color: primary),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Get.to(() => const Login()),
          ),
        ],
      ),
    );
  }
}
