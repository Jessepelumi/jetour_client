import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/router/navigation.dart';
import 'package:jetour_client/shared/section_header.dart';
import 'package:jetour_client/views/home/widgets/action_buttons.dart';
import 'package:jetour_client/views/home/widgets/balance_summary.dart';
import 'package:jetour_client/views/home/widgets/home_header.dart';
import 'package:jetour_client/views/nfc/nfc_screen.dart';
import 'package:jetour_client/views/transactions/widgets/transaction_tile.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Transaction {
  final bool isCredit;
  final String title;
  final String time;
  final String day;
  final String amount;

  Transaction({
    required this.isCredit,
    required this.title,
    required this.time,
    required this.day,
    required this.amount,
  });
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy data
    final List<Transaction> transactions = [
      Transaction(
          isCredit: false,
          title: "Transfer to Mide",
          time: "9:52 AM",
          day: "28 Sep",
          amount: "3,450.00"),
      Transaction(
          isCredit: true,
          title: "Transfer from Kora",
          time: "4:20 AM",
          day: "28 Sep",
          amount: "525,000.00"),
      Transaction(
          isCredit: true,
          title: "Transfer from Ipaoluwa",
          time: "11:18 PM",
          day: "27 Sep",
          amount: "18,200.00"),
    ];

    final NavigationController navigationController = Get.find();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: smallMedium,
            vertical: small,
          ),
          child: Column(
            children: [
              // header
              const HomeHeader(),
              const SizedBox(height: smallMedium),

              // balance widget
              const BalanceSummary(),
              const SizedBox(height: extraSmall),
              Divider(color: lightGrey.withOpacity(0.4)),
              const SizedBox(height: small),

              // actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButtons(
                    actionName: "Send",
                    action: () {},
                    icon: PhosphorIconsRegular.paperPlaneTilt,
                  ),
                  ActionButtons(
                    action: () {},
                    actionName: "Receive",
                    icon: PhosphorIconsRegular.downloadSimple,
                  ),
                  ActionButtons(
                    action: () => Get.to(() => const NfcScreen()),
                    actionName: "NFC",
                    icon: PhosphorIconsRegular.rss,
                  ),
                  ActionButtons(
                    action: () {},
                    actionName: "Pay Bills",
                    icon: PhosphorIconsRegular.wallet,
                  ),
                ],
              ),
              const SizedBox(height: medium),

              // transaction tile
              SectionHeader(
                action: () {
                  navigationController.selectedIndex(1);
                },
                title: "Transactions",
                actionText: "View all",
              ),

              // transaction list
              Wrap(
                spacing: small, // Horizontal spacing between items
                runSpacing: small, // Vertical spacing between rows
                children: transactions.map((transaction) {
                  return TransactionTile(
                    isCredit: transaction.isCredit,
                    title: transaction.title,
                    time: transaction.time,
                    day: transaction.day,
                    amount: transaction.amount,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
