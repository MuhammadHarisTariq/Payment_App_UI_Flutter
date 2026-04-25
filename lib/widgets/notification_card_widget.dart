import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;
  final String time;
  final VoidCallback? onTap;

  const NotificationCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.bgColorLight,
              width: 1,
            ), // BorderSide
          ), // Border
        ), // BoxDecoration
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      color: AppColors.TextColor,
                      fontSize: 12,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 6),
                  Text(
                    time,
                    style: TextStyle(
                      color: AppColors.TextColor,
                      fontSize: 11,
                    ), // TextStyle
                  ), // Text
                ],
              ), // Column
            ), // Expanded
            SizedBox(width: 12),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: AppColors.bgColorLight,
                shape: BoxShape.circle,
              ), // BoxDecoration
              child: Icon(
                Icons.notifications_none,
                color: AppColors.TextColor,
                size: 20,
              ), // Icon
            ), // Container
          ],
        ),
      ), // Container
    ); // GestureDetector
  }
}
