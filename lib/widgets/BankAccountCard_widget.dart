import 'package:flutter/material.dart';

class BankAccountCard extends StatelessWidget {
  final String bankName;
  final String accountNumber;
  final String balance;
  final Color color;

  const BankAccountCard({
    super.key,
    required this.bankName,
    required this.accountNumber,
    required this.balance,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ), // BoxDecoration
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bankName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ), // TextStyle
          ), // Text
          SizedBox(height: 4),
          Text(
            accountNumber,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 11,
            ), // TextStyle
          ), // Text
          SizedBox(height: 8),
          Text(
            balance,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ), // TextStyle
          ), // Text
        ],
      ),
    ); // Container
  }
}