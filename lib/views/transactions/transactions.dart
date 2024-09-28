import 'package:flutter/material.dart';
import 'package:jetour_client/core/util/sizes.dart';
import 'package:jetour_client/shared/custom_appbar.dart';
import 'package:jetour_client/views/transactions/widgets/transaction_tile.dart';

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

    return Scaffold(
      appBar: PageAppBar(title: "Transactions"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: smallMedium,
            vertical: small,
          ),
          child: Wrap(
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
        ),
      ),
    );
  }
}
