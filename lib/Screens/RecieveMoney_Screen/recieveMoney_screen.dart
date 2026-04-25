import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ppp/utils/app_colors.dart';

class ReceiveMoneyScreen extends StatelessWidget {
  const ReceiveMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Header ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recieve Money",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.TextColor,
                        width: 1.5,
                      ), // Border.all
                    ), // BoxDecoration
                    child: InkWell(
                      onTap: ()=> Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: AppColors.TextColor,
                        size: 16,
                      ),
                    ), // Icon
                  ), // Container
                ],
              ), // Row
            ), // Padding

            // ── QR Code ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(16),
                ), // BoxDecoration
                child: Image.asset(
                  "assets/receive_money/barcode.png", // add your QR code asset path here
                  height: 260,
                  fit: BoxFit.contain,
                ), // Image.asset
              ), // Container
            ), // Padding

            SizedBox(height: 24),

            // ── Other Options ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Other Options",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
            ), // Padding

            SizedBox(height: 12),

            // ── Pay ID Row ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(12),
                ), // BoxDecoration
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Pay ID",
                      style: TextStyle(
                        color: AppColors.TextColor,
                        fontSize: 13,
                      ), // TextStyle
                    ), // Text
                    Row(
                      children: [
                        Text(
                          "xyz@524899652",
                          style: TextStyle(
                            color: AppColors.TextColor,
                            fontSize: 13,
                          ), // TextStyle
                        ), // Text
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(
                              ClipboardData(text: "xyz@524899652"),
                            ); // ClipboardData
                          },
                          child: Icon(
                            Icons.copy,
                            color: AppColors.TextColor,
                            size: 18,
                          ), // Icon
                        ), // GestureDetector
                      ],
                    ), // Row
                  ],
                ), // Row
              ), // Container
            ), // Padding

            SizedBox(height: 10),

            // ── Show Bank Account ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(12),
                ), // BoxDecoration
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show bank account details",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ), // TextStyle
                    ), // Text
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.TextColor,
                      size: 14,
                    ), // Icon
                  ],
                ), // Row
              ), // Container
            ), // Padding
          ],
        ),
      ),
    ); // Scaffold
  }
}