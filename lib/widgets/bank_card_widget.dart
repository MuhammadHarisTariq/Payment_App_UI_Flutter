import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  final String title;
  final String accountNumber;
  final String amount;
  final Color color;

  const BankCardWidget({
    super.key,
    required this.title,
    required this.accountNumber,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 160, // fixed width for horizontal scroll
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            accountNumber,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 10,
            ),
          ),

          const Spacer(),

          Text(
            amount,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}