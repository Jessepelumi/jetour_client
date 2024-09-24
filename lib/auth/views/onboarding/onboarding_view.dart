import 'package:flutter/material.dart';
import 'package:jetour_client/auth/views/onboarding/widgets/dot_navigation.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const Text("Jetour"),
            Row(
              children: [
                Image.asset("assets/image/app-icon.png"),
                SizedBox(width: 4),
                Text("JETOUR"),
              ],
            ),
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.5,
            ),

            // dot indicator
            const DotNavigation(),

            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Container(
                child: Text("Hello there!👋"),
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue),
                ),
              ),
            ),
            Text(title),
            Text(subtitle),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Continue"),
          // style: ,
        ),
        const Text("Alredy logged in?"),
      ],
    );
  }
}
