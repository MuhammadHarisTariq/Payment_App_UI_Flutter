import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';

class OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String imagepath;
  final bool showButton;

  const OfferCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagepath,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.bgColorLight,
        borderRadius: BorderRadius.circular(14),
      ), // BoxDecoration
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(12),
            ), // BoxDecoration
            child: Image.asset(
              imagepath,
              fit: BoxFit.contain,
            ), // Image.asset
          ), // Container
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ), // TextStyle
                ), // Text
                SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ), // TextStyle
                ), // Text
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    color: AppColors.TextColor,
                    fontSize: 11,
                  ), // TextStyle
                ), // Text
                if (showButton) ...[
                  SizedBox(height: 8),
                  Text(
                    "Go to offer page",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ), // TextStyle
                  ), // Text
                ],
              ],
            ), // Column
          ), // Expanded
        ],
      ),
    ); // Container
  }
}