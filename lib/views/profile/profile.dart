import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: extraLarge, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: medium),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(smallLarge),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(smallMedium),
                    color: white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: activeButton,
                      child: Text(
                        'JA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: extraLarge,
                        ),
                      ),
                    ),
                    const Text(
                      'Jesse Adesina',
                      style: TextStyle(
                          fontSize: extraLarge, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: small,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.mail_outlined,
                        ),
                        Text(
                          'jesse.adesina@example.com',
                          style: TextStyle(fontSize: medium, color: lightGrey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: small,
                    ),
                    const InformationContainer(
                        label: 'AccountVerified', color: Colors.green),
                    const SizedBox(
                      height: small,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(extraSmall),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  Colors.black, // Set the color of the border
                              width: 1, // Set the width of the border
                            ),
                            borderRadius: BorderRadius.circular(
                                8), // Optional: round the corners
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.edit_outlined),
                              SizedBox(
                                width: small,
                              ),
                              Text(
                                'Edit Profile',
                                style: TextStyle(fontSize: medium),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: small,
                        ),
                        Container(
                          padding: const EdgeInsets.all(extraSmall),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  Colors.black, // Set the color of the border
                              width: 1, // Set the width of the border
                            ),
                            borderRadius: BorderRadius.circular(
                                8), // Optional: round the corners
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.photo_library_outlined),
                              SizedBox(
                                width: small,
                              ),
                              Text(
                                'Update Profile Photo',
                                style: TextStyle(fontSize: medium),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: smallMedium,
              ),
              const SectionTitle(title: 'Personal Data',),
              const SizedBox(
                height: small,
              ),
              const ListTile(
                leading: Icon(PhosphorIconsRegular.user),
                title: Text('Personal data'),
                tileColor: white,
              ),
              const SizedBox(
                height: small,
              ),
              const SectionTitle(title: 'Security',),
              const Column(
                children: [
                  ListTile(
                  leading: Icon(PhosphorIconsRegular.lockSimple),
                    title: Text('Change PIN'),
                    tileColor: white,
                  ),
                  ListTile(
                    leading: Icon(PhosphorIconsRegular.shieldCheck),
                    title: Text('Two-factor authentication (2FA)'),
                    tileColor: white,
                  ),
                  ListTile(
                    leading: Icon(PhosphorIconsRegular.deviceMobileCamera),
                    title: Text('Devices'),
                    tileColor: white,
                  ),
                ],
              ),
              const SectionTitle(title: 'Display',),
              const SizedBox(
                height: small,
              ),
              const Column(
                children: [
                  ListTile(
                   leading: Icon(PhosphorIconsRegular.moon),
                    title: Text('Theme'),
                    tileColor: white,
                  ),
                  ListTile(
                   leading: Icon(PhosphorIconsRegular.globe),
                    title: Text('Language'),
                    tileColor: white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title; // Add a field to hold the title text

  const SectionTitle({
    Key? key,
    required this.title, // Make the title parameter required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title, // Use the title passed to the widget
      style: const TextStyle(fontSize: 20, color: Colors.grey), // Adjust font size and color as needed
    );
  }
}
