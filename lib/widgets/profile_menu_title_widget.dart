import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';

class ProfileMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.bgColorLight,
            width: 1,
          ), // BorderSide
        ), // Border
      ), // BoxDecoration
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.TextColor,
            size: 22,
          ), // Icon
          SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 15,
              ), // TextStyle
            ), // Text
          ), // Expanded
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.TextColor,
            size: 14,
          ), // Icon
        ],
      ),
    ); // Container
  }
}