import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/Reward_Collect_Card_widget.dart';
import 'package:ppp/widgets/custom_heading.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Cashback Banner ──
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.bgColorLight,
                borderRadius: BorderRadius.circular(14),
              ), // BoxDecoration
              child: Column(
                children: [
                  Text(
                    "Casbacks earned",
                    style: TextStyle(
                      color: AppColors.TextColor,
                      fontSize: 14,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 6),
                  Text(
                    "\$507",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 4),
                  Text(
                    "+ 88 Rs  This month",
                    style: TextStyle(
                      color: AppColors.TextColor,
                      fontSize: 12,
                    ), // TextStyle
                  ), // Text
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bgColor,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ), // RoundedRectangleBorder
                      ), // ElevatedButton.styleFrom
                      child: Text(
                        "View your cashback history",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                        ), // TextStyle
                      ), // Text
                    ), // ElevatedButton
                  ), // SizedBox
                ],
              ),
            ), // Container

            // ── Scratchcards ──
            CustomHeadings(
              headingtext: "Scrachcards won",
              is_icon_show: false,
            ), // CustomHeadings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: List.generate(3, (index) {
                  return Container(
                    height: 90,
                    width: 90,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: AppColors.bgColorLight,
                      borderRadius: BorderRadius.circular(12),
                    ), // BoxDecoration
                    child: index == 0
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColors.TextColor,
                              strokeWidth: 2,
                            ), // CircularProgressIndicator
                          ) // Center
                        : SizedBox.shrink(),
                  ); // Container
                }),
              ), // Row
            ), // Padding

            SizedBox(height: 16),

            // ── Collect Rewards ──
            CustomHeadings(
              headingtext: "Collect Rewards",
              is_icon_show: false,
            ), // CustomHeadings

            RewardCollectCard(
              title: "Flat 50 off On food Delivery",
              subtitle: "On orders above 99 on Swaggy, Somato",
              imagepath: "assets/reward/r1.png", // add your asset path here
            ), // RewardCollectCard

            RewardCollectCard(
              title: "20% Cashback On Amason",
              subtitle: "Up to Rs 150 Minimum Order 1000",
              imagepath: "assets/reward/r2.png", // add your asset path here
            ), // RewardCollectCard

            SizedBox(height: 20),
          ],
        ),
      ),
    ); // SingleChildScrollView
  }
}