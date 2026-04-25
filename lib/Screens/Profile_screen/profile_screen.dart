import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/profile_menu_title_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ── Profile Header ──
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(16),
                ), // BoxDecoration
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                            "assets/profile_pic.png",
                          ), // add your asset path here
                        ), // CircleAvatar
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Haris",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ), // TextStyle
                                  ), // Text
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.emoji_events,
                                    color: Colors.amber,
                                    size: 18,
                                  ), // Icon
                                ],
                              ), // Row
                              Text(
                                "Level 4 Ace Member",
                                style: TextStyle(
                                  color: AppColors.TextColor,
                                  fontSize: 12,
                                ), // TextStyle
                              ), // Text
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: LinearProgressIndicator(
                                        value: 0.85,
                                        backgroundColor: AppColors.bgColor,
                                        color: Colors.purpleAccent,
                                        minHeight: 6,
                                      ), // LinearProgressIndicator
                                    ), // ClipRRect
                                  ), // Expanded
                                  SizedBox(width: 6),
                                  Text(
                                    "Lv 5",
                                    style: TextStyle(
                                      color: AppColors.TextColor,
                                      fontSize: 10,
                                    ), // TextStyle
                                  ), // Text
                                ],
                              ), // Row
                            ],
                          ), // Column
                        ), // Expanded
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
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.close,
                              color: AppColors.TextColor,
                              size: 16,
                            ),
                          ), // Icon
                        ), // Container
                      ],
                    ), // Row

                    SizedBox(height: 16),

                    // ── Stats Row ──
                    
                    Row(
                      children: [
                        _StatItem(value: "1,208", label: "Transactions"),
                        _StatItem(value: "726", label: "Points"),
                        _StatItem(value: "8", label: "Rank"),
                        SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bgColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ), // RoundedRectangleBorder
                          ), // ElevatedButton.styleFrom
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 11,
                                ), // TextStyle
                              ), // Text
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 10,
                              ), // Icon
                            ],
                          ), // Row
                        ), // ElevatedButton
                      ],
                    ), // Row

                    SizedBox(height: 12),

                    // ── Action Buttons ──
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: AppColors.TextColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ), // RoundedRectangleBorder
                            ), // OutlinedButton.styleFrom
                            icon: Icon(
                              Icons.edit,
                              color: AppColors.whiteColor,
                              size: 14,
                            ),
                            label: Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 12,
                              ), // TextStyle
                            ), // Text
                          ), // OutlinedButton.icon
                        ), // Expanded
                        SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: AppColors.TextColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ), // RoundedRectangleBorder
                            ), // OutlinedButton.styleFrom
                            icon: Icon(
                              Icons.settings,
                              color: AppColors.whiteColor,
                              size: 14,
                            ),
                            label: Text(
                              "Settings",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 12,
                              ), // TextStyle
                            ), // Text
                          ), // OutlinedButton.icon
                        ), // Expanded
                        SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: AppColors.TextColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ), // RoundedRectangleBorder
                            ), // OutlinedButton.styleFrom
                            icon: Icon(
                              Icons.share,
                              color: AppColors.whiteColor,
                              size: 14,
                            ),
                            label: Text(
                              "Share",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 12,
                              ), // TextStyle
                            ), // Text
                          ), // OutlinedButton.icon
                        ), // Expanded
                      ],
                    ), // Row
                  ],
                ),
              ), // Container

              SizedBox(height: 6),

              // ── Main Menu ──
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(16),
                ), // BoxDecoration
                child: Column(
                  children: [
                    ProfileMenuTile(
                      icon: Icons.receipt_long,
                      title: "All Transactions",
                    ),
                    ProfileMenuTile(
                      icon: Icons.info_outline,
                      title: "Pending Transactions",
                    ),
                    ProfileMenuTile(
                      icon: Icons.history,
                      title: "Refund status",
                    ),
                    ProfileMenuTile(
                      icon: Icons.warning_amber,
                      title: "Raise an issue",
                    ),
                    ProfileMenuTile(
                      icon: Icons.favorite_border,
                      title: "Help and Support",
                    ),
                  ],
                ),
              ), // Container

              SizedBox(height: 10),

              // ── Secondary Menu ──
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.bgColorLight,
                  borderRadius: BorderRadius.circular(16),
                ), // BoxDecoration
                child: Column(
                  children: [
                    ProfileMenuTile(
                      icon: Icons.info_outline,
                      title: "About Us",
                    ),
                    ProfileMenuTile(
                      icon: Icons.description_outlined,
                      title: "Terms and Conditions",
                    ),
                    ProfileMenuTile(
                      icon: Icons.warning_amber,
                      title: "Feedback",
                    ),
                  ],
                ),
              ), // Container

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ); // Scaffold
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
              color: Colors.purpleAccent,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ), // TextStyle
          ), // Text
          Text(
            label,
            style: TextStyle(
              color: AppColors.TextColor,
              fontSize: 10,
            ), // TextStyle
          ), // Text
        ],
      ),
    ); // Expanded
  }
}
