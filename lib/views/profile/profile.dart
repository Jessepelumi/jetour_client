import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/shared/information_container.dart';
import 'package:jetour_client/shared/initials_avatar.dart';
import 'package:jetour_client/shared/section_header.dart';
import 'package:jetour_client/views/profile/widget/profile_tile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: smallMedium,
          vertical: small,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(medium),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(small),
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // initials
                    const InitialsAvatar(),

                    // name
                    Text(
                      'Jesse Adesina',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),

                    // email
                    Text(
                      'jesse.adesina@example.com',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: lightGrey),
                    ),
                    const SizedBox(height: small),

                    // varification
                    const InformationContainer(
                      label: "Account Verified",
                      color: green,
                      hasAsset: true,
                      asset: PhosphorIconsFill.sealCheck,
                    ),
                    const SizedBox(height: medium),

                    // edit
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(small),
                            decoration: BoxDecoration(
                              border: Border.all(color: lightGrey),
                              borderRadius: BorderRadius.circular(small),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  PhosphorIconsBold.pencilSimple,
                                  size: medium,
                                ),
                                const SizedBox(width: extraSmall),
                                Text(
                                  "Edit Profile",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: small),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(small),
                            decoration: BoxDecoration(
                              border: Border.all(color: lightGrey),
                              borderRadius: BorderRadius.circular(small),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  PhosphorIconsBold.image,
                                  size: medium,
                                ),
                                const SizedBox(width: extraSmall),
                                Text(
                                  "Update Profile Picture",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: small),

              // personal data
              const SectionHeader(
                title: "Personal Data",
                actionText: "",
              ),
              const SizedBox(height: small),
              ProfileTile(
                action: () {},
                title: "Personal data",
                asset: PhosphorIconsRegular.userGear,
              ),
              const SizedBox(height: small),

              // security
              const SectionHeader(
                title: "Security",
                actionText: "",
              ),
              const SizedBox(height: small),
              ProfileTile(
                action: () {},
                title: "Change Pin",
                asset: PhosphorIconsRegular.lockSimple,
              ),
              ProfileTile(
                action: () {},
                title: "Two-factor authentication (2FA)",
                asset: PhosphorIconsRegular.shieldStar,
              ),
              ProfileTile(
                action: () {},
                title: "Devices",
                asset: PhosphorIconsRegular.deviceMobileSpeaker,
              ),
              const SizedBox(height: small),

              // help & support
              const SectionHeader(
                title: "Help & Support",
                actionText: "",
              ),
              const SizedBox(height: small),
              ProfileTile(
                action: () {},
                title: "Support",
                asset: PhosphorIconsRegular.chatCircleDots,
              ),
              ProfileTile(
                action: () {},
                title: "Frequently Asked Questions (FAQs)",
                asset: PhosphorIconsRegular.question,
              ),
              const SizedBox(height: small),

              // account action
              const SectionHeader(
                title: "Account Actions",
                actionText: "",
              ),
              const SizedBox(height: small),
              ProfileTile(
                action: () {},
                title: "Refer a friend",
                asset: PhosphorIconsRegular.circlesThreePlus,
              ),
              ProfileTile(
                action: () {},
                title: "Close Accout (Application)",
                asset: PhosphorIconsRegular.trashSimple,
              ),
              ProfileTile(
                action: () {},
                title: "Log out",
                asset: PhosphorIconsRegular.signOut,
                isLogout: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
