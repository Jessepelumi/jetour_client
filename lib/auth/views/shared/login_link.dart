import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
            text: "Already have an accounti? ",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: lightGrey, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "Login here",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: primary, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
