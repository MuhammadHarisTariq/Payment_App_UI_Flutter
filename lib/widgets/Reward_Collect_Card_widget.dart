import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';

class RewardCollectCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagepath;

  const RewardCollectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagepath,
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
        children: [
          Container(
            height: 70,
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
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppColors.TextColor,
                    fontSize: 11,
                  ), // TextStyle
                ), // Text
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9B2D6F),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    minimumSize: Size(0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), // RoundedRectangleBorder
                  ), // ElevatedButton.styleFrom
                  child: Text(
                    "Collect Now",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                    ), // TextStyle
                  ), // Text
                ), // ElevatedButton
              ],
            ), // Column
          ), // Expanded
        ],
      ),
    ); // Container
  }
}