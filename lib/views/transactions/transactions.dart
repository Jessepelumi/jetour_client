import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/colors.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
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

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy data
    final List<Transaction> transactions = [
      Transaction(
        isCredit: false,
        title: "Transfer to Mide",
        time: "9:52 AM",
        day: "28 Sep",
        amount: "3,450.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Kora",
        time: "4:20 AM",
        day: "28 Sep",
        amount: "525,000.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Ipaoluwa",
        time: "11:18 PM",
        day: "27 Sep",
        amount: "18,200.00",
      ),
      Transaction(
        isCredit: false,
        title: "Transfer to Mide",
        time: "9:52 AM",
        day: "28 Sep",
        amount: "3,450.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Kora",
        time: "4:20 AM",
        day: "28 Sep",
        amount: "525,000.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Ipaoluwa",
        time: "11:18 PM",
        day: "27 Sep",
        amount: "18,200.00",
      ),
      Transaction(
        isCredit: false,
        title: "Transfer to Mide",
        time: "9:52 AM",
        day: "28 Sep",
        amount: "3,450.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Kora",
        time: "4:20 AM",
        day: "28 Sep",
        amount: "525,000.00",
      ),
      Transaction(
        isCredit: true,
        title: "Transfer from Ipaoluwa",
        time: "11:18 PM",
        day: "27 Sep",
        amount: "18,200.00",
      ),
    ];

    return Scaffold(
      appBar: const PageAppBar(title: "Transactions"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: smallMedium,
            vertical: small,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: smallMedium,
                  vertical: extraSmall,
                ),
                decoration: BoxDecoration(
                  color: black2.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(small),
                ),
                child: Row(
                  children: [
                    const Icon(PhosphorIconsRegular.magnifyingGlass),
                    Expanded(
                      child: TextFormField(
                        cursorColor: black2.withOpacity(0.7),
                        decoration: const InputDecoration(
                          hintText: "Search",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
