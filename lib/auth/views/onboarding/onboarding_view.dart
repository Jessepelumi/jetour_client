import 'package:flutter/material.dart';
import 'package:jetour_client/auth/views/shared/login_link.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  final String image, title, subtitle, buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.55,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
            ),
            Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: lightGrey, fontSize: smallMedium),
            ),
          ],
        ),
        const SizedBox(height: small),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
            // style: ,
          ),
        ),
        const LoginLink(),
      ],
    );
  }
}
